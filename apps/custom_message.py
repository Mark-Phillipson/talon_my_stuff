import math
import textwrap
import time

from talon import Module, Context, actions, clip, cron, skia, ui
from talon.canvas import Canvas, MouseEvent
from talon.types import Rect

mod = Module()
ctx = Context()

# Configurable values
CUSTOM_MESSAGE_TOPIC = "custom_message"
CUSTOM_MESSAGE_TITLE = "Swear Jar"
CUSTOM_MESSAGE_APP_TITLE = "App Notification"
CUSTOM_MESSAGE_DISPLAY_SECONDS = 15
CUSTOM_MESSAGE_DEFAULT_LEVEL = "warning"
CUSTOM_MESSAGE_PANEL_WIDTH = 760
CUSTOM_MESSAGE_PANEL_MIN_HEIGHT = 280
CUSTOM_MESSAGE_PANEL_MARGIN_TOP = 36
CUSTOM_MESSAGE_PANEL_MARGIN_RIGHT = 36
CUSTOM_MESSAGE_PANEL_MARGIN_LEFT = 20
CUSTOM_MESSAGE_PANEL_PADDING = 28
CUSTOM_MESSAGE_PANEL_RADIUS = 16
CUSTOM_MESSAGE_PANEL_BACKGROUND = "2B2B2B"
CUSTOM_MESSAGE_PANEL_TEXT_COLOUR = "FFFFFF"
CUSTOM_MESSAGE_PANEL_SUBTEXT_COLOUR = "D6D6D6"
CUSTOM_MESSAGE_PANEL_STATUS_COLOUR = "FFD966"
CUSTOM_MESSAGE_TITLE_TEXT_SIZE = 30
CUSTOM_MESSAGE_BODY_TEXT_SIZE = 24
CUSTOM_MESSAGE_BODY_LINE_HEIGHT = 34
CUSTOM_MESSAGE_STATUS_TEXT_SIZE = 20
CUSTOM_MESSAGE_STATUS_LINE_HEIGHT = 28
CUSTOM_MESSAGE_TITLE_GAP = 18
CUSTOM_MESSAGE_BUTTON_HEIGHT = 84
CUSTOM_MESSAGE_BUTTON_GAP = 18
CUSTOM_MESSAGE_BUTTON_RADIUS = 12
CUSTOM_MESSAGE_BUTTON_TEXT_SIZE = 24
CUSTOM_MESSAGE_COPY_BUTTON_COLOUR = "1F5A7A"
CUSTOM_MESSAGE_PIN_BUTTON_COLOUR = "3A7A3A"
CUSTOM_MESSAGE_RELEASE_BUTTON_COLOUR = "8A6A1D"
CUSTOM_MESSAGE_HIDE_BUTTON_COLOUR = "6A4040"
CUSTOM_MESSAGE_MAX_WRAP_CHARS = 42
CUSTOM_MESSAGE_COMMANDS = (
    "Voice commands:\n"
    "copy custom message\n"
    "keep custom message open\n"
    "release custom message\n"
    "hide custom message\n"
    "custom message help"
)

custom_message_balance = 0
custom_message_count = 0
_custom_message_timer_id = None
_current_custom_message_text = ""
_current_custom_message_title = CUSTOM_MESSAGE_TITLE
_current_custom_message_level = CUSTOM_MESSAGE_DEFAULT_LEVEL
_custom_message_pinned = False
_custom_message_deadline = None
_custom_message_canvas = None
_custom_message_button_rects = {}
_custom_message_pressed_button = None
_custom_message_click_job = None
_custom_message_countdown_job = None


def _cancel_clear_timer():
    global _custom_message_timer_id

    if _custom_message_timer_id is not None:
        cron.cancel(_custom_message_timer_id)
        _custom_message_timer_id = None


def _cancel_countdown_tick():
    global _custom_message_countdown_job

    if _custom_message_countdown_job is not None:
        cron.cancel(_custom_message_countdown_job)
        _custom_message_countdown_job = None


def _cancel_click_job():
    global _custom_message_click_job

    if _custom_message_click_job is not None:
        cron.cancel(_custom_message_click_job)
        _custom_message_click_job = None


def _perform_button_action(button_name: str):
    if button_name == "copy":
        actions.user.custom_message_copy_current()
    elif button_name == "pin":
        if _custom_message_pinned:
            actions.user.custom_message_release()
        else:
            actions.user.custom_message_keep_open()
    elif button_name == "hide":
        actions.user.custom_message_clear()


def _handle_click_action(button_name: str):
    global _custom_message_pressed_button, _custom_message_click_job

    _custom_message_click_job = None
    _perform_button_action(button_name)
    _custom_message_pressed_button = None
    _redraw_message_overlay()


def _estimate_display_seconds(content: str) -> int:
    return math.ceil(max(CUSTOM_MESSAGE_DISPLAY_SECONDS, 6 + len(content) / 20))


def _schedule_clear_timer(content: str):
    global _custom_message_timer_id, _custom_message_deadline

    if not content or _custom_message_pinned:
        _custom_message_deadline = None
        return

    seconds = _estimate_display_seconds(content)
    _custom_message_deadline = time.monotonic() + seconds
    _custom_message_timer_id = cron.after(f"{seconds}s", actions.user.custom_message_clear)
    _start_countdown_tick()


def _remaining_seconds() -> int:
    if _custom_message_deadline is None:
        return 0

    return max(0, math.ceil(_custom_message_deadline - time.monotonic()))


def _countdown_label() -> str:
    if _custom_message_pinned:
        return "Pinned open"

    if _custom_message_deadline is None:
        return ""

    remaining_seconds = _remaining_seconds()
    suffix = "s" if remaining_seconds != 1 else ""
    return f"Closing in {remaining_seconds} second{suffix}"


def _refresh_message_overlay():
    if not _current_custom_message_text:
        _cancel_countdown_tick()
        return

    if _custom_message_pinned or _custom_message_deadline is None:
        _cancel_countdown_tick()
        _show_message_overlay()
        return

    _redraw_message_overlay()


def _start_countdown_tick():
    global _custom_message_countdown_job

    _cancel_countdown_tick()
    if _custom_message_pinned or _custom_message_deadline is None:
        return

    _custom_message_countdown_job = cron.interval("1s", _refresh_message_overlay)


def _get_active_screen() -> ui.Screen:
    try:
        return ui.active_window().screen
    except Exception:
        return ui.main_screen()


def _wrap_message_text(text: str, max_chars: int = CUSTOM_MESSAGE_MAX_WRAP_CHARS) -> list[str]:
    lines = []

    for paragraph in text.splitlines() or [""]:
        if not paragraph:
            lines.append("")
            continue

        wrapped = textwrap.wrap(
            paragraph,
            width=max_chars,
            break_long_words=True,
            break_on_hyphens=False,
            replace_whitespace=False,
        )
        lines.extend(wrapped or [""])

    return lines or [""]


def _get_visible_message_lines(screen: ui.Screen) -> list[str]:
    wrapped_lines = _wrap_message_text(_current_custom_message_text)
    max_height = screen.height - (2 * CUSTOM_MESSAGE_PANEL_MARGIN_TOP)
    reserved_height = (
        CUSTOM_MESSAGE_PANEL_PADDING * 2
        + CUSTOM_MESSAGE_TITLE_TEXT_SIZE
        + CUSTOM_MESSAGE_TITLE_GAP
        + CUSTOM_MESSAGE_STATUS_LINE_HEIGHT
        + CUSTOM_MESSAGE_TITLE_GAP
        + CUSTOM_MESSAGE_TITLE_GAP
        + CUSTOM_MESSAGE_BUTTON_HEIGHT
    )
    max_lines = max(1, int((max_height - reserved_height) / CUSTOM_MESSAGE_BODY_LINE_HEIGHT))

    if len(wrapped_lines) <= max_lines:
        return wrapped_lines

    visible_lines = wrapped_lines[:max_lines]
    visible_lines[-1] = visible_lines[-1].rstrip(" .") + " ..."
    return visible_lines

def _get_panel_rect() -> tuple[ui.Screen, Rect, list[str]]:
    screen = _get_active_screen()
    width = min(
        CUSTOM_MESSAGE_PANEL_WIDTH,
        max(420, screen.width - CUSTOM_MESSAGE_PANEL_MARGIN_LEFT - CUSTOM_MESSAGE_PANEL_MARGIN_RIGHT),
    )
    lines = _get_visible_message_lines(screen)
    body_height = max(1, len(lines)) * CUSTOM_MESSAGE_BODY_LINE_HEIGHT
    height = max(
        CUSTOM_MESSAGE_PANEL_MIN_HEIGHT,
        (CUSTOM_MESSAGE_PANEL_PADDING * 2)
        + CUSTOM_MESSAGE_TITLE_TEXT_SIZE
        + CUSTOM_MESSAGE_TITLE_GAP
        + CUSTOM_MESSAGE_STATUS_LINE_HEIGHT
        + CUSTOM_MESSAGE_TITLE_GAP
        + body_height
        + CUSTOM_MESSAGE_TITLE_GAP
        + CUSTOM_MESSAGE_BUTTON_HEIGHT,
    )
    height = min(height, screen.height - (2 * CUSTOM_MESSAGE_PANEL_MARGIN_TOP))
    x = max(
        screen.x + CUSTOM_MESSAGE_PANEL_MARGIN_LEFT,
        screen.x + screen.width - width - CUSTOM_MESSAGE_PANEL_MARGIN_RIGHT,
    )
    y = screen.y + CUSTOM_MESSAGE_PANEL_MARGIN_TOP
    return screen, Rect(x, y, width, height), lines


def _level_border_colour(level: str) -> str:
    return {
        "info": "4C8DFF",
        "warning": "D0A000",
        "critical": "C94B4B",
    }.get(level, "4C8DFF")


def _darker_colour(colour: str, factor: float = 0.8) -> str:
    hex_colour = colour.lstrip("#")
    if len(hex_colour) != 6:
        return colour

    try:
        r = int(hex_colour[0:2], 16)
        g = int(hex_colour[2:4], 16)
        b = int(hex_colour[4:6], 16)
    except ValueError:
        return colour

    r = int(max(0, min(255, r * factor)))
    g = int(max(0, min(255, g * factor)))
    b = int(max(0, min(255, b * factor)))
    return f"{r:02X}{g:02X}{b:02X}"


def _hide_message_overlay():
    global _custom_message_canvas, _custom_message_button_rects

    _cancel_click_job()
    _custom_message_button_rects = {}
    if _custom_message_canvas is not None:
        _custom_message_canvas.unregister("draw", _draw_message_overlay)
        _custom_message_canvas.unregister("mouse", _on_message_overlay_mouse)
        _custom_message_canvas.close()
        _custom_message_canvas = None


def _redraw_message_overlay():
    if _custom_message_canvas is None:
        return

    _, rect, _ = _get_panel_rect()
    if _custom_message_canvas.rect != rect:
        _custom_message_canvas.rect = rect
    _custom_message_canvas.freeze()


def _show_message_overlay():
    global _custom_message_canvas

    actions.user.hud_set_virtual_keyboard()

    if not _current_custom_message_text:
        _hide_message_overlay()
        return

    if _custom_message_canvas is None:
        _, rect, _ = _get_panel_rect()
        _custom_message_canvas = Canvas(rect.x, rect.y, rect.width, rect.height)
        _custom_message_canvas.blocks_mouse = True
        _custom_message_canvas.register("draw", _draw_message_overlay)
        _custom_message_canvas.register("mouse", _on_message_overlay_mouse)

    _redraw_message_overlay()


def _draw_panel_background(canvas, rect: Rect):
    rrect = skia.RoundRect.from_rect(rect, x=CUSTOM_MESSAGE_PANEL_RADIUS, y=CUSTOM_MESSAGE_PANEL_RADIUS)

    canvas.paint.style = canvas.paint.Style.FILL
    canvas.paint.color = CUSTOM_MESSAGE_PANEL_BACKGROUND
    canvas.draw_rrect(rrect)

    canvas.paint.style = canvas.paint.Style.STROKE
    canvas.paint.stroke_width = 3
    canvas.paint.color = _level_border_colour(_current_custom_message_level)
    canvas.draw_rrect(rrect)


def _draw_button(canvas, rect: Rect, label: str, colour: str, pressed: bool = False):
    rrect = skia.RoundRect.from_rect(rect, x=CUSTOM_MESSAGE_BUTTON_RADIUS, y=CUSTOM_MESSAGE_BUTTON_RADIUS)
    fill_colour = _darker_colour(colour, 0.75) if pressed else colour

    canvas.paint.style = canvas.paint.Style.FILL
    canvas.paint.color = fill_colour
    canvas.draw_rrect(rrect)

    canvas.paint.style = canvas.paint.Style.STROKE
    canvas.paint.stroke_width = 2
    canvas.paint.color = "111111"
    canvas.draw_rrect(rrect)

    canvas.paint.style = canvas.paint.Style.FILL
    canvas.paint.color = CUSTOM_MESSAGE_PANEL_TEXT_COLOUR
    canvas.paint.textsize = CUSTOM_MESSAGE_BUTTON_TEXT_SIZE
    text_rect = canvas.paint.measure_text(label)[1]
    text_x = rect.x + (rect.width - text_rect.width) / 2 - text_rect.x
    text_y = rect.y + (rect.height + text_rect.height) / 2 + (1 if pressed else 0)
    canvas.draw_text(label, text_x, text_y)


def _draw_message_overlay(canvas):
    global _custom_message_button_rects

    _, rect, lines = _get_panel_rect()
    if canvas.rect != rect:
        canvas.rect = rect

    _custom_message_button_rects = {}
    canvas.paint.typeface = "Segoe UI"
    _draw_panel_background(canvas, rect)

    content_x = rect.x + CUSTOM_MESSAGE_PANEL_PADDING
    title_baseline = rect.y + CUSTOM_MESSAGE_PANEL_PADDING + CUSTOM_MESSAGE_TITLE_TEXT_SIZE
    canvas.paint.style = canvas.paint.Style.FILL
    canvas.paint.color = CUSTOM_MESSAGE_PANEL_TEXT_COLOUR
    canvas.paint.textsize = CUSTOM_MESSAGE_TITLE_TEXT_SIZE
    canvas.draw_text(_current_custom_message_title, content_x, title_baseline)

    status_text = _countdown_label()
    status_baseline = title_baseline + CUSTOM_MESSAGE_TITLE_GAP + CUSTOM_MESSAGE_STATUS_TEXT_SIZE
    canvas.paint.color = CUSTOM_MESSAGE_PANEL_STATUS_COLOUR
    canvas.paint.textsize = CUSTOM_MESSAGE_STATUS_TEXT_SIZE
    canvas.draw_text(status_text, content_x, status_baseline)

    canvas.paint.color = CUSTOM_MESSAGE_PANEL_SUBTEXT_COLOUR
    canvas.paint.textsize = CUSTOM_MESSAGE_BODY_TEXT_SIZE
    body_y = status_baseline + CUSTOM_MESSAGE_TITLE_GAP
    for index, line in enumerate(lines):
        line_y = body_y + ((index + 1) * CUSTOM_MESSAGE_BODY_LINE_HEIGHT)
        canvas.draw_text(line, content_x, line_y)

    button_y = rect.y + rect.height - CUSTOM_MESSAGE_PANEL_PADDING - CUSTOM_MESSAGE_BUTTON_HEIGHT
    available_width = rect.width - (2 * CUSTOM_MESSAGE_PANEL_PADDING)
    button_width = (available_width - (2 * CUSTOM_MESSAGE_BUTTON_GAP)) / 3
    button_specs = [
        ("copy", "Copy", CUSTOM_MESSAGE_COPY_BUTTON_COLOUR),
        (
            "pin",
            "Release" if _custom_message_pinned else "Keep Open",
            CUSTOM_MESSAGE_RELEASE_BUTTON_COLOUR if _custom_message_pinned else CUSTOM_MESSAGE_PIN_BUTTON_COLOUR,
        ),
        ("hide", "Hide", CUSTOM_MESSAGE_HIDE_BUTTON_COLOUR),
    ]

    for index, (name, label, colour) in enumerate(button_specs):
        button_x = content_x + index * (button_width + CUSTOM_MESSAGE_BUTTON_GAP)
        button_rect = Rect(button_x, button_y, button_width, CUSTOM_MESSAGE_BUTTON_HEIGHT)
        _custom_message_button_rects[name] = button_rect
        _draw_button(
            canvas,
            button_rect,
            label,
            colour,
            pressed=(name == _custom_message_pressed_button),
        )


def _on_message_overlay_mouse(event: MouseEvent):
    global _custom_message_pressed_button

    if event.button != 0:
        return

    if event.event == "mousedown":
        _custom_message_pressed_button = None
        for button_name, button_rect in _custom_message_button_rects.items():
            if button_rect.contains(event.gpos.x, event.gpos.y):
                _custom_message_pressed_button = button_name
                break
        _redraw_message_overlay()
        return

    if event.event == "mousemove" and _custom_message_pressed_button is not None:
        if not _custom_message_button_rects[_custom_message_pressed_button].contains(
            event.gpos.x, event.gpos.y
        ):
            _custom_message_pressed_button = None
            _redraw_message_overlay()
        return

    if event.event != "mouseup":
        return

    clicked_button = None
    for button_name, button_rect in _custom_message_button_rects.items():
        if button_rect.contains(event.gpos.x, event.gpos.y):
            clicked_button = button_name
            break

    if clicked_button is not None:
        _cancel_click_job()
        _custom_message_pressed_button = clicked_button
        _redraw_message_overlay()
        _custom_message_click_job = cron.after("80ms", lambda: _handle_click_action(clicked_button))
    else:
        _custom_message_pressed_button = None
        _redraw_message_overlay()


@ctx.action_class("app")
class AppActions:
    def notify(body: str = "", title: str = "", subtitle: str = "", sound: bool = False):
        message = " ".join(p for p in [title, subtitle, body] if p).strip()
        level = "critical" if any(w in message.lower() for w in ["error", "fail"]) else "warning"
        actions.user.custom_message_notify(level, message, 0, True, False, CUSTOM_MESSAGE_APP_TITLE)

@mod.action_class
class Actions:
    def custom_message_clear():
        """Clear the custom message overlay."""
        global _current_custom_message_text, _current_custom_message_title, _current_custom_message_level, _custom_message_pinned, _custom_message_deadline

        _cancel_clear_timer()
        _cancel_countdown_tick()
        _current_custom_message_text = ""
        _current_custom_message_title = CUSTOM_MESSAGE_TITLE
        _current_custom_message_level = CUSTOM_MESSAGE_DEFAULT_LEVEL
        _custom_message_pinned = False
        _custom_message_deadline = None
        _hide_message_overlay()
        actions.user.hud_publish_content("", CUSTOM_MESSAGE_TOPIC, "", show=False)

    def custom_message_copy_current():
        """Copy the current custom message to the clipboard."""
        if not _current_custom_message_text:
            actions.user.hud_add_log("warning", "No custom message available to copy")
            return

        clip.set_text(_current_custom_message_text)
        actions.user.hud_add_log("info", "Copied custom message to clipboard")
        _show_message_overlay()

    def custom_message_keep_open():
        """Keep the current custom HUD message open until cleared manually."""
        global _custom_message_pinned, _custom_message_deadline

        if not _current_custom_message_text:
            actions.user.hud_add_log("warning", "No custom message available to keep open")
            return

        _custom_message_pinned = True
        _custom_message_deadline = None
        _cancel_clear_timer()
        _cancel_countdown_tick()
        actions.user.hud_add_log("info", "Keeping current custom message open")
        _show_message_overlay()

    def custom_message_release():
        """Resume the auto-clear timer for the current custom HUD message."""
        global _custom_message_pinned

        if not _current_custom_message_text:
            actions.user.hud_add_log("warning", "No custom message available to release")
            return

        if not _custom_message_pinned:
            actions.user.hud_add_log("info", "Custom message is already using its timer")
            return

        _custom_message_pinned = False
        _cancel_clear_timer()
        _schedule_clear_timer(_current_custom_message_text)
        actions.user.hud_add_log("info", "Custom message timer resumed")
        _show_message_overlay()

    def custom_message_show_help():
        """Show custom message voice commands in the HUD and keep them visible."""
        actions.user.custom_message_notify(
            "info",
            CUSTOM_MESSAGE_COMMANDS,
            increment=0,
            app_message=False,
            show_balance=False,
            header="Custom Message Commands",
        )
        actions.user.custom_message_keep_open()

    def custom_message_notify(level: str = CUSTOM_MESSAGE_DEFAULT_LEVEL, message: str = None, increment: int = 1, app_message: bool = False, show_balance: bool = True, header: str = None):
        """Push a custom timed HUD message.

        app_message=True means this is from app.notify and should not increase Swear Jar amount.
        show_balance=False means don’t display jar/pound value.
        header can be used to set the HUD panel title.
        """
        global custom_message_balance, custom_message_count, _current_custom_message_text, _current_custom_message_title, _current_custom_message_level, _custom_message_pinned, _custom_message_deadline

        level = (level or CUSTOM_MESSAGE_DEFAULT_LEVEL).lower()
        if level not in ["info", "warning", "critical"]:
            level = CUSTOM_MESSAGE_DEFAULT_LEVEL

        if not message:
            message = "That's quite enough of that"

        if app_message:
            custom_message_count += 1
            content = f"{message} (custom message #{custom_message_count})"
            log_text = f"custom message #{custom_message_count}"
        else:
            if show_balance:
                custom_message_balance += increment
                content = f"{message} (Swear Jar £{custom_message_balance})"
                log_text = f"balance {custom_message_balance}"
            else:
                content = message
                log_text = "no balance"

        panel_title = header or (CUSTOM_MESSAGE_APP_TITLE if app_message else CUSTOM_MESSAGE_TITLE)
        _current_custom_message_text = content
        _current_custom_message_title = panel_title
        _current_custom_message_level = level
        _custom_message_pinned = False
        _custom_message_deadline = None

        print(f"[custom_message] {level} / {message} ({log_text})")
        actions.user.hud_add_log(level, content)
        actions.user.hud_publish_content("", CUSTOM_MESSAGE_TOPIC, "", show=False)
        _show_message_overlay()

        _cancel_clear_timer()
        _schedule_clear_timer(content)

    def custom_message_set_app_notify_intercept(enabled: bool = True):
        """No-op: app.notify is always routed to HUD via ctx.action_class override."""
        pass
