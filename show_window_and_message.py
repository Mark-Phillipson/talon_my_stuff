from talon import Module, actions, ui, egui
from talon.egui import Window
from talon.types import Rect


mod = Module()

_WINDOW_WIDTH = 420
_WINDOW_HEIGHT = 220
_PADDING_X = 16
_PADDING_Y = 14
_BUTTON_MIN_WIDTH = 360
_BUTTON_MIN_HEIGHT = 172
_YES_NO_WINDOW_WIDTH = 520
_YES_NO_WINDOW_HEIGHT = 240
_YES_NO_BUTTON_WIDTH = 280
_YES_NO_BUTTON_GAP = 300
_YES_NO_BUTTONS_ROW_WIDTH = (_YES_NO_BUTTON_WIDTH * 2) + _YES_NO_BUTTON_GAP
_YES_NO_TEXT_ESTIMATED_HEIGHT = 34
_YES_NO_TEXT_TO_BUTTON_GAP = 12
_YES_NO_CONTENT_TOP_PADDING = max(
    _PADDING_Y,
    int(
        (
            _YES_NO_WINDOW_HEIGHT
            - (_YES_NO_TEXT_ESTIMATED_HEIGHT + _YES_NO_TEXT_TO_BUTTON_GAP + _BUTTON_MIN_HEIGHT)
        )
        / 2
    ),
)
_YES_NO_BUTTONS_LEFT_PADDING = max(
    0,
    int((_YES_NO_WINDOW_WIDTH - (2 * _PADDING_X) - _YES_NO_BUTTONS_ROW_WIDTH) / 2),
)
_YES_BUTTON_LABEL = "\n         Yes         \n"
_NO_BUTTON_LABEL = "\n         No         \n"
_DEFAULT_CLOSE_CAPTION = "Close!"
_CLOSE_LABEL = "\n    Close!    \n"
_WINDOW_TEXT = "Hello World!"
_DEFAULT_YES_NO_TITLE = "Confirm"
_DEFAULT_YES_NO_TEXT = "Continue?"
_YES_NO_WINDOW_TEXT = _DEFAULT_YES_NO_TEXT
_YES_NO_RESULT = ""
_YES_NO_PENDING = False
_YES_NO_ON_SELECT = "none"
_YES_NO_ON_YES_ACTION = ""
_YES_NO_ON_NO_ACTION = ""

_window = Window()
_window.title = "Talon Message Box"
_window.autosize = False
_window.decorated = True
_window.draggable = True

_yes_no_window = Window()
_yes_no_window.title = _DEFAULT_YES_NO_TITLE
_yes_no_window.autosize = False
_yes_no_window.decorated = True
_yes_no_window.draggable = True


def _format_close_label(caption: str) -> str:
    label = (caption or "").strip() or _DEFAULT_CLOSE_CAPTION
    return f"\n\n      {label}      \n\n"


def _get_active_screen():
    try:
        return ui.active_window().screen
    except Exception:
        return ui.main_screen()


def _center_window(target_window: Window, width: int, height: int):
    screen = _get_active_screen()
    x = screen.x + max(0, (screen.width - width) / 2)
    y = screen.y + max(0, (screen.height - height) / 2)
    target_window.rect = Rect(
        x,
        y,
        width,
        height,
    )


def _set_yes_no_result(result: str):
    global _YES_NO_RESULT, _YES_NO_PENDING, _YES_NO_ON_SELECT, _YES_NO_ON_YES_ACTION, _YES_NO_ON_NO_ACTION

    _YES_NO_RESULT = result
    _YES_NO_PENDING = False
    print(f"show_yes_no_message_box selected: {result}")
    _yes_no_window.hide()

    on_select = _YES_NO_ON_SELECT
    on_yes_action = _YES_NO_ON_YES_ACTION
    on_no_action = _YES_NO_ON_NO_ACTION
    _YES_NO_ON_SELECT = "none"
    _YES_NO_ON_YES_ACTION = ""
    _YES_NO_ON_NO_ACTION = ""

    if result == "yes":
        _run_user_action_by_name(on_yes_action)
    elif result == "no":
        _run_user_action_by_name(on_no_action)

    if on_select == "insert":
        actions.insert(result)
    elif on_select == "notify":
        actions.app.notify(f"Yes/No result: {result}")
    elif on_select == "message":
        actions.user.show_window_and_message(f"You clicked {result}", "Yes/No Result", "OK")


def _run_user_action_by_name(action_name: str):
    name = (action_name or "").strip()
    if not name:
        return

    try:
        action_callable = getattr(actions.user, name)
    except AttributeError as error:
        actions.app.notify(f"Unknown Talon action: user.{name}")
        print(f"show_yes_no_message_box action lookup failed for user.{name}: {error}")
        return

    try:
        action_callable()
    except Exception as error:
        actions.app.notify(f"Error running user.{name}: {error}")
        print(f"show_yes_no_message_box action user.{name} failed: {error}")


async def _draw_window(ui):
    display_text = _WINDOW_TEXT or "Hello World!"
    async with ui.horizontal() as row:
        row.add_space(_PADDING_X)
        async with row.vertical() as col:
            col.add_space(_PADDING_Y)
            if hasattr(egui, "RichText"):
                col.label(egui.RichText(display_text).size(28))
            elif hasattr(egui, "WidgetText"):
                col.label(egui.WidgetText.text(display_text).heading())
            else:
                col.label(display_text)

            col.add_space(10)
            close_clicked = False
            if hasattr(egui, "Button"):
                try:
                    close_button = egui.Button(_CLOSE_LABEL)
                    if hasattr(egui, "Vec2"):
                        close_button = close_button.min_size(
                            egui.Vec2(_BUTTON_MIN_WIDTH, _BUTTON_MIN_HEIGHT)
                        )
                    close_clicked = col.add(close_button).clicked()
                except Exception:
                    close_clicked = col.button(_CLOSE_LABEL).clicked()
            else:
                close_clicked = col.button(_CLOSE_LABEL).clicked()

            if close_clicked:
                _window.hide()


async def _draw_yes_no_window(ui):
    display_text = _YES_NO_WINDOW_TEXT or _DEFAULT_YES_NO_TEXT
    async with ui.horizontal() as row:
        row.add_space(_PADDING_X)
        async with row.vertical() as col:
            col.add_space(_YES_NO_CONTENT_TOP_PADDING)
            if hasattr(egui, "RichText"):
                col.label(egui.RichText(display_text).size(28))
            elif hasattr(egui, "WidgetText"):
                col.label(egui.WidgetText.text(display_text).heading())
            else:
                col.label(display_text)

            col.add_space(_YES_NO_TEXT_TO_BUTTON_GAP)
            yes_clicked = False
            no_clicked = False
            async with col.horizontal() as buttons_row:
                buttons_row.add_space(_YES_NO_BUTTONS_LEFT_PADDING)
                if hasattr(egui, "Button"):
                    try:
                        yes_button = egui.Button(_YES_BUTTON_LABEL)
                        no_button = egui.Button(_NO_BUTTON_LABEL)
                        if hasattr(egui, "Vec2"):
                            yes_button = yes_button.min_size(egui.Vec2(_YES_NO_BUTTON_WIDTH, _BUTTON_MIN_HEIGHT))
                            no_button = no_button.min_size(egui.Vec2(_YES_NO_BUTTON_WIDTH, _BUTTON_MIN_HEIGHT))
                        yes_clicked = buttons_row.add(yes_button).clicked()
                        buttons_row.add_space(_YES_NO_BUTTON_GAP)
                        no_clicked = buttons_row.add(no_button).clicked()
                    except Exception:
                        yes_clicked = buttons_row.button(_YES_BUTTON_LABEL).clicked()
                        buttons_row.add_space(_YES_NO_BUTTON_GAP)
                        no_clicked = buttons_row.button(_NO_BUTTON_LABEL).clicked()
                else:
                    yes_clicked = buttons_row.button(_YES_BUTTON_LABEL).clicked()
                    buttons_row.add_space(_YES_NO_BUTTON_GAP)
                    no_clicked = buttons_row.button(_NO_BUTTON_LABEL).clicked()

            if yes_clicked:
                _set_yes_no_result("yes")
            elif no_clicked:
                _set_yes_no_result("no")


_window.set_content(_draw_window)
_yes_no_window.set_content(_draw_yes_no_window)


@mod.action_class
class Actions:
    def show_window_and_message(text: str = "Hello World!", title: str = "Talon Message Box", buttonCaption: str = "Close!"):
        """Show the window with custom text."""
        global _WINDOW_TEXT, _CLOSE_LABEL

        _WINDOW_TEXT = (text or "").strip() or "Hello World!"
        window_title = (title or "").strip() or "Talon Message Box"
        _window.title = window_title
        _CLOSE_LABEL = _format_close_label(buttonCaption)
        print(f"show_window_and_message called with text='{_WINDOW_TEXT}' title='{window_title}'")
        try:
            _center_window(_window, _WINDOW_WIDTH, _WINDOW_HEIGHT)
        except Exception as e:
            print(f"show_window_and_message center error: {e}")
        try:
            if hasattr(_window, "always_on_top"):
                _window.always_on_top = True
            _window.show()
            # Intentionally do not focus this window; it should remain overlay-only.
        except Exception as e:
            print(f"show_window_and_message show error: {e}")
            actions.app.notify(f"show_window_and_message failed: {e}")

    def show_yes_no_message_box(
        text: str = "Continue?",
        title: str = "Confirm",
        onSelect: str = "none",
        yesAction: str = "",
        noAction: str = "",
    ) -> str:
        """Show a non-blocking egui yes/no window; optional onSelect and user action names for yes/no."""
        global _YES_NO_WINDOW_TEXT, _YES_NO_RESULT, _YES_NO_PENDING, _YES_NO_ON_SELECT, _YES_NO_ON_YES_ACTION, _YES_NO_ON_NO_ACTION

        _YES_NO_WINDOW_TEXT = (text or "").strip() or _DEFAULT_YES_NO_TEXT
        _yes_no_window.title = (title or "").strip() or _DEFAULT_YES_NO_TITLE
        option = (onSelect or "").strip().lower() or "none"
        if option not in {"none", "insert", "notify", "message"}:
            option = "none"
        _YES_NO_ON_SELECT = option
        _YES_NO_ON_YES_ACTION = (yesAction or "").strip()
        _YES_NO_ON_NO_ACTION = (noAction or "").strip()
        _YES_NO_RESULT = ""
        _YES_NO_PENDING = True

        try:
            _center_window(_yes_no_window, _YES_NO_WINDOW_WIDTH, _YES_NO_WINDOW_HEIGHT)
        except Exception as e:
            print(f"show_yes_no_message_box center error: {e}")
        try:
            if hasattr(_yes_no_window, "always_on_top"):
                _yes_no_window.always_on_top = True
            _yes_no_window.show()
            # Intentionally do not focus this window; it should remain overlay-only.
        except Exception as e:
            _YES_NO_PENDING = False
            print(f"show_yes_no_message_box show error: {e}")
            actions.app.notify(f"show_yes_no_message_box failed: {e}")
            raise

        return "pending"

    def get_yes_no_message_box_result() -> str:
        """Return the latest yes/no selection from the egui window."""
        if _YES_NO_PENDING:
            return "pending"
        return _YES_NO_RESULT

    def yes_no_message_box_pending() -> bool:
        """Return True while the yes/no egui window is waiting for a click."""
        return _YES_NO_PENDING

    def confirm_and_run_actions(text: str = "Continue?", title: str = "Confirm", yesAction: str = "", noAction: str = "") -> str:
        """Show yes/no dialog and run user.<yesAction> or user.<noAction> after click."""
        return actions.user.show_yes_no_message_box(text, title, "none", yesAction, noAction)

    def computer_restart_confirmed():
        """Run the actual computer restart sequence."""
        actions.key("super-x")
        actions.sleep("300ms")
        actions.key("u")
        actions.sleep("300ms")
        actions.key("r")

    def computer_shutdown_confirmed():
        """Run the actual computer shutdown sequence."""
        actions.user.show_window_and_message("The computer is now shutting down.", "Computer Shutdown", "Close")
        actions.key("super-x")
        actions.sleep("300ms")
        actions.key("u")
        actions.sleep("300ms")
        actions.key("s")

    def computer_sleep_confirmed():
        """Run the actual computer sleep sequence."""
        actions.user.show_window_and_message("The computer is now going to sleep.", "Computer Sleep", "Close")
        actions.speech.disable()
        actions.key("super-r")
        actions.sleep("300ms")
        actions.insert("cmd")
        actions.sleep("300ms")
        actions.key("enter")
        actions.sleep("600ms")
        actions.insert("rundll32.exe powrprof.dll, SetSuspendState Sleep")
        actions.sleep("300ms")
        actions.key("enter")

    def confirm_computer_restart():
        """Ask for confirmation, then restart the computer on Yes."""
        actions.user.confirm_and_run_actions(
            "Are you sure you want to restart the computer?",
            "Confirm Restart",
            "computer_restart_confirmed",
        )

    def confirm_computer_shutdown():
        """Ask for confirmation, then shut down the computer on Yes."""
        actions.user.confirm_and_run_actions(
            "Are you sure you want to shut down the computer?",
            "Confirm Shutdown",
            "computer_shutdown_confirmed",
        )

    def confirm_computer_sleep():
        """Ask for confirmation, then put the computer to sleep on Yes."""
        actions.user.confirm_and_run_actions(
            "Are you sure you want to put the computer to sleep?",
            "Confirm Sleep",
            "computer_sleep_confirmed",
        )

    def show_yes_no_demo_follow_up():
        """Example follow-up action for confirm_and_run_actions demos."""
        actions.user.show_window_and_message("Confirmed and action ran.", "Demo", "OK")
