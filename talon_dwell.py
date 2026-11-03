# -*- coding: utf-8 -*-
"""
talon_dwell.py — Talon's control mouse + Windows Eye Control's face .

Sheraz's setup: Talon's control mouse moves the pointer (smooth), and
this script adds everything Windows Eye Control has that Talon lacks,
mirroring the real Eye Control (the dark launchpad + dark keyboard
from Microsoft's design):

  * 12-icon launchpad across the top, white icons on black:
    Move bar, Left click, Right click, Precise mouse, Drag, Scroll,
    Keyboard, Speak (text-to-speech), Start, Task view, Pause, Off.
  * Dwell clicking — hold your gaze still, it clicks. No words.
  * Precise mouse: hold longer on a tighter circle; the click lands
    on the average of where you looked (steady aim for tiny targets).
  * The Eye Control keyboard, same layout: top strip with the
    move key (up/down arrows), the wide SPACE bar in the middle and
    X to close; then word-delete, q-p, backspace / shift, a-l, dot,
    enter / &123, Ctrl, z-m, comma, ?, Fn. Lowercase labels, dark keys.
    &123 page = numbers + symbols. Fn page = F-keys, arrows, Esc,
    Tab, Home/End, PgUp/PgDn, Delete, Win key.
    Ctrl is sticky: dwell Ctrl, then a letter = Ctrl+letter
    (copy, paste, select-all...). The word-delete key sends
    Ctrl+Backspace, like Eye Control.
  * Speak: dwell the speech-bubble tile, type on the keyboard, and
    the text stays in a strip instead of going into the app; press
    Enter and the PC reads it aloud. X closes and clears it.

It never moves the pointer (except Precise's final averaged landing
spot — that is the click itself). Talon control mouse stays in charge.
If the visuals fail to draw on your Talon version, clicking and typing
still work — check Talon's log (View Log) for "talon_dwell:" lines
and send those to Jarvis.

Install: put this file and talon_dwell.talon in your Talon user
folder, then start control mouse the way you always do.

Built for Sheraz, Nov 2026. Version 3 (Eye Control mirror).
"""

import math
import os
import subprocess
import time

from talon import Module, actions, app, cron, ctrl, ui

try:
    from talon.canvas import Canvas
except Exception:  # very old Talon — dwell still works, no visuals
    Canvas = None

try:
    from talon.types import Rect
except Exception:
    Rect = None

try:
    from talon.types import Point2d as Point
except Exception:
    Point = None
# =====================================================================
# SETTINGS — edit these, then restart Talon (or reload the script).
# =====================================================================
DWELL_TIME_MS      = 900    # hold your gaze this long to click
BUTTON_DWELL_MS    = 800    # dwell time on the launchpad tiles
KEY_DWELL_MS       = 700    # dwell time on a keyboard key
DWELL_RADIUS_PX    = 28     # pointer may wander this far, dwell counts
PRECISE_DWELL_MS   = 1100   # Precise mode: longer hold...
PRECISE_RADIUS_PX  = 14     # ...on a tighter circle = steadier click
CLICK_LOCKOUT_MS   = 250    # pause after each click (no double-fires)
SCROLL_STEP        = 3      # scroll speed in Scroll mode
SCROLL_INVERT      = False  # flip to True if scrolling runs backwards
THEME              = "eyecontrol"  # the dark Eye Control look.
                                   # "light"/"dark" = the Fluent style.
KB_WIDTH_PCT       = 96     # keyboard width (% of screen) — Eye Control is BIG
# =====================================================================

PALETTES = {
     "eyecontrol": {
    "panel": "0A0A0A",
    "btn": "0A0A0A",
    "btn_edge": "0A0A0A",
    "icon": "FFFFFF",
    "accent": "444444",
    "accent_icon": "FFFFFF",
    "dwell_fill": "555555",
    "ring": "FFFFFF",
    "ring_bg": "777777",
    "kb_panel": "181818",
    "kb_key": "3D3D3D",
    "kb_edge": "2A2A2A",
    "kb_text": "FFFFFF",
    "kb_accent": "6E6E6E",
    },
    "light": {
        "panel": "F9F9F9", "btn": "FFFFFF", "btn_edge": "D8D8D8",
        "icon": "1B1B1B", "accent": "0067C0", "accent_icon": "FFFFFF",
        "dwell_fill": "BFE0FA", "ring": "0067C0", "ring_bg": "A8D4F5",
        "kb_panel": "F9F9F9", "kb_key": "FFFFFF", "kb_edge": "D8D8D8",
        "kb_text": "1B1B1B", "kb_accent": "0067C0",
    },
    "dark": {
        "panel": "2C2C2C", "btn": "373737", "btn_edge": "4D4D4D",
        "icon": "FFFFFF", "accent": "4CC2FF", "accent_icon": "0B2D4E",
        "dwell_fill": "2D7DB5", "ring": "4CC2FF", "ring_bg": "1F4E79",
        "kb_panel": "2C2C2C", "kb_key": "373737", "kb_edge": "4D4D4D",
        "kb_text": "FFFFFF", "kb_accent": "4CC2FF",
    },
}

# The launchpad, in Windows Eye Control's order.
BUTTONS = ["MOVE", "LEFT", "RIGHT", "PRECISE", "DRAG", "SCROLL",
           "KEYS", "SPEAK", "START", "TASK", "PAUSE", "QUIT"]
BTN_W, BTN_H, BTN_GAP, BTN_Y, PANEL_PAD = 64, 64, 6, 10, 8
RING_R = 26


def _chars(s, w=1):
    return [(ch, "char", w) for ch in s]


def _nav(name):
    return [("", "nav:" + name, 1)]


# Keyboard pages on a 12-unit grid. Key = (value, kind, span).
# kinds: char / shift / backspace / delword / enter / ctrl /
#        page:symbols / page:letters / page:fn / nav:<talon key> /
#        fkey (value like "f5")
KB_PAGES = {
    "letters": [
        [("", "delword", 1)] + _chars("qwertyuiop") + [("", "backspace", 1)],
        [("", "shift", 1)] + _chars("asdfghjkl") + [(".", "char", 1), ("", "enter", 1)],
        [("", "page:symbols", 1), ("", "ctrl", 1)] + _chars("zxcvbnm") +
        [(",", "char", 1), ("?", "char", 1), ("", "page:fn", 1)],
    ],
    "symbols": [
        [("", "delword", 1)] + _chars("1234567890") + [("", "backspace", 1)],
        [("_", "char", 1)] + _chars("@#$%&*-+()") + [("", "enter", 1)],
        [("", "page:letters", 1), ("", "ctrl", 1)] + _chars("!\"':;/?\\~") +
        [("", "page:fn", 1)],
    ],
    "fn": [
        [("", "nav:esc", 1)] + [(("f%d" % i), "fkey", 1) for i in range(1, 12)],
        [("", "nav:tab", 1), ("f12", "fkey", 1), ("", "nav:left", 1),
         ("", "nav:up", 1), ("", "nav:down", 1), ("", "nav:right", 1),
         ("", "nav:home", 1), ("", "nav:end", 1), ("", "nav:pgup", 1),
         ("", "nav:pgdn", 1), ("", "nav:delete", 1), ("", "nav:super", 1)],
        [("", "page:letters", 1), ("", "ctrl", 1)] + _chars("zxcvbnm") +
        [(",", "char", 1), (".", "char", 1), ("", "enter", 1)],
    ],
}

KB_LABELS = {
    "shift": "⇧", "backspace": "⌫", "delword": "⌫w", "enter": "↵",
    "ctrl": "Ctrl", "page:symbols": "&123", "page:letters": "ABC",
    "page:fn": "Fn", "nav:esc": "esc", "nav:tab": "tab",
    "nav:left": "←", "nav:up": "↑", "nav:down": "↓", "nav:right": "→",
    "nav:home": "Home", "nav:end": "End", "nav:pgup": "PgUp",
    "nav:pgdn": "PgDn", "nav:delete": "Del", "nav:super": "Win",
    "move": "↕", "close": "✕",
}

mod = Module()


def _safe(fn, *args, **kwargs):
    """Call fn, swallow errors, return None on failure."""
    try:
        return fn(*args, **kwargs)
    except Exception:
        return None


class DwellEngine:
    def __init__(self):
        self.enabled = True
        self.mode = "LEFT"
        self.dragging = False
        self.scrolling = False
        self.dwell_paused = False
        self.anchor = None
        self.anchor_since = 0.0
        self.acc_x = 0.0
        self.acc_y = 0.0
        self.acc_n = 0
        self.btn_focus = None
        self.btn_since = 0.0
        self.lockout_until = 0.0
        self.progress = 0.0
        self.btn_progress = 0.0
        self.pointer = (0, 0)
        self.buttons = {}
        self.panel = None
        self.bar_at_bottom = False
        self.screen_rect = None
        # keyboard state
        self.keyboard_open = False
        self.kb_page = "letters"
        self.kb_at_top = False
        self.shift = False
        self.ctrl_armed = False
        self.kb_panel = None
        self.keys = []            # (x, y, w, h, value, kind)
        self.key_focus = None
        self.key_since = 0.0
        self.key_progress = 0.0
        # text-to-speech state
        self.tts_mode = False
        self.tts_buffer = ""
        # drawing
        self.canvas = None
        self._freeze = None
        self.job = None

    # ------------------------------------------------------------------
    def start(self):
        try:
            screen = ui.main_screen()
            r = screen.rect
            self.screen_rect = r
            self._layout_bar()
            self._build_keys()
            if Canvas is not None:
                try:
                    self.canvas = Canvas.from_screen(screen)
                    self.canvas.register("draw", self.draw)
                    show = getattr(self.canvas, "show", None)
                    if show:
                        show()
                    self._freeze = getattr(self.canvas, "freeze", None)
                    if self._freeze:
                        self._freeze()
                except Exception as exc:
                    print("talon_dwell: overlay unavailable (%r) — "
                          "dwell clicking still works." % (exc,))
                    self.canvas = None
            self.job = cron.interval("16ms", self.tick)
            print("talon_dwell: running (Eye Control style). "
                  "Talon control mouse + dwell + keyboard + speak.")
        except Exception as exc:
            print("talon_dwell: failed to start: %r" % (exc,))

    # ------------------------------------------------------------------
    # layout
    # ------------------------------------------------------------------
    def _layout_bar(self):
        r = self.screen_rect

        total_w = len(BUTTONS) * BTN_W + (len(BUTTONS) - 1) * BTN_GAP

        x0 = int(r.x + (r.width - total_w) // 2)
        y0 = int(r.y + BTN_Y)

        self.buttons = {}

        for i, key in enumerate(BUTTONS):
            bx = x0 + i * (BTN_W + BTN_GAP)

            self.buttons[key] = (
                bx,
                y0,
                bx + BTN_W,
                y0 + BTN_H
            )

        self.panel = (
            r.x,
            y0 - PANEL_PAD,
            r.width,
            BTN_H + 2 * PANEL_PAD
        )

    def _build_keys(self):
        r = self.screen_rect
        if r is None:
            return
        kb_w = int(r.width * KB_WIDTH_PCT / 100.0)
        unit = kb_w / 12.0
        key_h = int(unit * 0.82)
        gap = 5
        rows = KB_PAGES[self.kb_page]
        n_rows = 1 + len(rows)          # strip + content rows
        kb_h = n_rows * key_h + (n_rows - 1) * gap + 2 * PANEL_PAD
        x0 = int(r.x + (r.width - kb_w) / 2)
        if self.kb_at_top:
            y0 = int(r.y + 8)
        else:
            y0 = int(r.y + r.height - 8 - kb_h)
        self.kb_panel = (x0, y0, kb_w, kb_h)
        self.keys = []
        # top strip: move (left), space (centre), close (right)
        y = y0 + PANEL_PAD
        strip = [("", "move", 1.5, 0.0), (" ", "char", 4.0, 4.0),
                 ("", "close", 1.5, 10.5)]
        for value, kind, span, start_u in strip:
            kx = x0 + start_u * unit
            self.keys.append((kx, y, span * unit - gap, key_h, value, kind))
        y += key_h + gap
        # content rows (each spans the full 12 units)
        for row in rows:
            x = float(x0)
            for value, kind, span in row:
                w = span * unit - gap
                self.keys.append((x, y, w, key_h, value, kind))
                x += span * unit
            y += key_h + gap

    def _key_label(self, value, kind):
        if kind == "char":
            if value == " ":
                return ""
            return value.upper() if (self.shift and value.isalpha()) else value
        if kind == "fkey":
            return value.upper()
        return KB_LABELS.get(kind, "")

    # ------------------------------------------------------------------
    # speaking (Windows' built-in voice, via PowerShell + env var so
    # the typed text never needs shell-quoting)
    # ------------------------------------------------------------------
    def _speak(self, text):
        if not text.strip():
            return
        try:
            env = dict(os.environ)
            env["DWELL_TTS_TEXT"] = text
            ps = ("Add-Type -AssemblyName System.Speech; "
                  "$s = New-Object System.Speech.Synthesis.SpeechSynthesizer; "
                  "$s.Speak($env:DWELL_TTS_TEXT)")
            subprocess.Popen(["powershell", "-NoProfile", "-WindowStyle",
                              "Hidden", "-Command", ps], env=env)
        except Exception as exc:
            print("talon_dwell: speak failed: %r" % (exc,))
            app.notify("Speak failed — check Talon's log")

    # ------------------------------------------------------------------
    # keyboard actions
    # ------------------------------------------------------------------
    def perform_key(self, value, kind):
        ctrl = self.ctrl_armed
        if kind == "ctrl":
            self.ctrl_armed = not self.ctrl_armed
            return
        if kind == "move":
            self.kb_at_top = not self.kb_at_top
            self._build_keys()
            self.key_focus = None
            return
        if kind == "close":
            self.keyboard_open = False
            self.tts_mode = False
            self.tts_buffer = ""
            self.key_focus = None
            return
        if kind.startswith("page:"):
            self.kb_page = kind.split(":", 1)[1]
            self._build_keys()
            self.key_focus = None
            self.ctrl_armed = False
            return
        if self.tts_mode:
            if kind == "char":
                self.tts_buffer += value.upper() if (self.shift and value.isalpha()) else value
            elif kind == "backspace":
                self.tts_buffer = self.tts_buffer[:-1]
            elif kind == "delword":
                stripped = self.tts_buffer.rstrip()
                idx = stripped.rfind(" ")
                self.tts_buffer = stripped[:idx + 1] if idx >= 0 else ""
            elif kind == "enter":
                self._speak(self.tts_buffer)
            elif kind == "shift":
                self.shift = not self.shift
            return
        # normal typing into the focused app
        if kind == "char":
            if ctrl and value.isalnum():
                _safe(actions.key, "ctrl-" + value)
            else:
                text = value
                if self.shift and text.isalpha():
                    text = text.upper()
                _safe(actions.insert, text)
        elif kind == "shift":
            self.shift = not self.shift
        elif kind == "backspace":
            _safe(actions.key, "ctrl-backspace" if ctrl else "backspace")
        elif kind == "delword":
            _safe(actions.key, "ctrl-backspace")
        elif kind == "enter":
            _safe(actions.key, "ctrl-enter" if ctrl else "enter")
        elif kind == "fkey" or kind.startswith("nav:"):
            name = value if kind == "fkey" else kind.split(":", 1)[1]
            _safe(actions.key, ("ctrl-" + name) if ctrl else name)
        if ctrl:
            self.ctrl_armed = False

    # ------------------------------------------------------------------
    # clicking (Talon's own ctrl API)
    # ------------------------------------------------------------------
    def _click(self, button=0):
        _safe(ctrl.mouse_click, button=button)

    def _button_down(self):
        _safe(ctrl.mouse_click, button=0, down=True)

    def _button_up(self):
        _safe(ctrl.mouse_click, button=0, up=True)

    def fire_click(self):
        if self.mode == "LEFT":
            self._click(0)
        elif self.mode == "RIGHT":
            self._click(1)
            self.mode = "LEFT"
        elif self.mode == "DOUBLE":
            self._click(0)
            time.sleep(0.05)
            self._click(0)
            self.mode = "LEFT"
        elif self.mode == "DRAG":
            if not self.dragging:
                self._button_down()
                self.dragging = True
            else:
                self._button_up()
                self.dragging = False
                self.mode = "LEFT"
        elif self.mode == "SCROLL":
            self.scrolling = not self.scrolling

    def press_button(self, key):
        if key == "QUIT":
            self.enabled = False
            app.notify("Dwell off — say 'dwell on' to restart it")
        elif key == "PAUSE":
            self.dwell_paused = not self.dwell_paused
        elif key == "MOVE":
            self.bar_at_bottom = not self.bar_at_bottom
            self._layout_bar()
        elif key == "KEYS":
            self.keyboard_open = not self.keyboard_open
            if not self.keyboard_open:
                self.tts_mode = False
                self.tts_buffer = ""
        elif key == "SPEAK":
            if self.tts_mode:
                self._speak(self.tts_buffer)
            else:
                self.tts_mode = True
                self.keyboard_open = True
        elif key == "START":
            _safe(actions.key, "super")
        elif key == "TASK":
            _safe(actions.key, "super-tab")
        elif key in ("LEFT", "RIGHT", "DOUBLE", "DRAG", "SCROLL", "PRECISE"):
            self.mode = key
            if key != "DRAG" and self.dragging:
                self._button_up()
                self.dragging = False
            if key != "SCROLL":
                self.scrolling = False

    # ------------------------------------------------------------------
    def tick(self):
        if not self.enabled:
            return
        try:
            x, y = ctrl.mouse_pos()
        except Exception:
            return
        self.pointer = (x, y)
        now = time.monotonic()
        self.progress = 0.0
        self.btn_progress = 0.0
        self.key_progress = 0.0

        # ---- keyboard zone? (keys win inside their panel) ----
        if self.keyboard_open and self.kb_panel:
            px, py, pw, ph = self.kb_panel
            if px <= x <= px + pw and py <= y <= py + ph:
                hit = None
                for (kx, ky, kw, kh, value, kind) in self.keys:
                    if kx <= x <= kx + kw and ky <= y <= ky + kh:
                        hit = (value, kind)
                        break
                if hit is not None:
                    if self.key_focus != hit:
                        self.key_focus, self.key_since = hit, now
                    self.key_progress = (now - self.key_since) * 1000.0 / KEY_DWELL_MS
                    if self.key_progress >= 1.0 and now >= self.lockout_until:
                        self.perform_key(*hit)
                        self.key_since = now   # holding the key repeats it
                        self.key_progress = 0.0
                        self.lockout_until = now + 0.12
                else:
                    self.key_focus = None
                self.anchor = None
                self.btn_focus = None
                if self._freeze:
                    _safe(self._freeze)
                return
            self.key_focus = None

        # ---- launchpad zone? ----
        btn = None
        if self.panel:
            px, py, pw, ph = self.panel
            if px <= x <= px + pw and py <= y <= py + ph:
                for key, (x0, y0, x1, y1) in self.buttons.items():
                    if x0 <= x <= x1 and y0 <= y <= y1:
                        btn = key
                        break
                if btn is not None:
                    if self.btn_focus != btn:
                        self.btn_focus, self.btn_since = btn, now
                    self.btn_progress = (now - self.btn_since) * 1000.0 / BUTTON_DWELL_MS
                    if self.btn_progress >= 1.0 and now >= self.lockout_until:
                        self.press_button(btn)
                        self.btn_focus, self.btn_since = None, None
                        self.lockout_until = now + CLICK_LOCKOUT_MS / 1000.0
                self.anchor = None
                if self._freeze:
                    _safe(self._freeze)
                return
            self.btn_focus = None

        # ---- content ----
        if self.dwell_paused:
            self.anchor = None
        elif self.scrolling:
            screen_h = self.screen_rect.height if self.screen_rect else 1080
            if y < screen_h * 0.4:
                _safe(ctrl.mouse_scroll, y=(SCROLL_STEP if SCROLL_INVERT else -SCROLL_STEP))
            elif y > screen_h * 0.6:
                _safe(ctrl.mouse_scroll, y=(-SCROLL_STEP if SCROLL_INVERT else SCROLL_STEP))
            if self.anchor is None or math.hypot(x - self.anchor[0], y - self.anchor[1]) > DWELL_RADIUS_PX:
                self.anchor, self.anchor_since = (x, y), now
            elif (now - self.anchor_since) * 1000.0 >= DWELL_TIME_MS:
                self.scrolling = False
                self.anchor = None
                self.lockout_until = now + CLICK_LOCKOUT_MS / 1000.0
        else:
            precise = self.mode == "PRECISE"
            radius = PRECISE_RADIUS_PX if precise else DWELL_RADIUS_PX
            need_ms = PRECISE_DWELL_MS if precise else DWELL_TIME_MS
            if self.anchor is None or math.hypot(x - self.anchor[0], y - self.anchor[1]) > radius:
                self.anchor, self.anchor_since = (x, y), now
                self.acc_x, self.acc_y, self.acc_n = x, y, 1
            else:
                self.acc_x += x
                self.acc_y += y
                self.acc_n += 1
            self.progress = (now - self.anchor_since) * 1000.0 / need_ms
            if self.progress >= 1.0 and now >= self.lockout_until:
                if precise:
                    ax = self.acc_x / max(1, self.acc_n)
                    ay = self.acc_y / max(1, self.acc_n)
                    _safe(ctrl.mouse_move, int(ax), int(ay))
                    self._click(0)
                    self.mode = "LEFT"
                else:
                    self.fire_click()
                self.anchor = None
                self.anchor_since = None
                self.lockout_until = now + CLICK_LOCKOUT_MS / 1000.0
                self.progress = 0.0

        if self._freeze:
            _safe(self._freeze)

    # ------------------------------------------------------------------
    # Drawing (best effort — the engine above never depends on this)
    # ------------------------------------------------------------------
    def _col(self, c, hexrgb):
        try:
            c.paint.color = hexrgb
        except Exception:
            pass

    def _rect(self, c, x, y, w, h, color):
        if Rect is None:
            return
        self._col(c, color)
        try:
            c.paint.style = c.paint.Style.FILL
        except Exception:
            pass
        _safe(c.draw_rect, Rect(x, y, w, h))

    def _dot(self, c, x, y, r, color):
        self._col(c, color)
        if _safe(c.draw_circle, x, y, r) is None and Point is not None:
            _safe(c.draw_circle, Point(x, y), r)

    def _line(self, c, x1, y1, x2, y2, color, width=2):
        self._col(c, color)
        try:
            c.paint.stroke_width = width
        except Exception:
            pass
        if _safe(c.draw_line, x1, y1, x2, y2) is None and Point is not None:
            _safe(c.draw_line, Point(x1, y1), Point(x2, y2))

    def _text(self, c, x, y, s, color, size):
        self._col(c, color)
        try:
            c.paint.textsize = size
        except Exception:
            pass
        if _safe(c.draw_text, x, y, s) is None:
            _safe(c.draw_text, s, x, y)

    def _outline_rect(self, c, x, y, w, h, color):
        self._rect(c, x, y, w, 2, color)
        self._rect(c, x, y + h - 2, w, 2, color)
        self._rect(c, x, y, 2, h, color)
        self._rect(c, x + w - 2, y, 2, h, color)

    def _mouse_icon(self, c, cx, cy, fg, side):
        w, h = 22, 34
        x0, y0 = cx - w / 2, cy - h / 2
        if side < 0:
            self._rect(c, x0, y0, w / 2, h * 0.45, fg)
        elif side > 0:
            self._rect(c, x0 + w / 2, y0, w / 2, h * 0.45, fg)
        self._outline_rect(c, x0, y0, w, h, fg)
        self._line(c, cx, y0, cx, y0 + h * 0.45, fg)

    def _icon(self, c, key, cx, cy, fg, pal):
        if key == "MOVE":
            self._line(c, cx, cy - 14, cx, cy + 14, fg)
            self._line(c, cx - 5, cy - 9, cx, cy - 14, fg)
            self._line(c, cx + 5, cy - 9, cx, cy - 14, fg)
            self._line(c, cx - 5, cy + 9, cx, cy + 14, fg)
            self._line(c, cx + 5, cy + 9, cx, cy + 14, fg)
        elif key == "LEFT":
            self._mouse_icon(c, cx, cy, fg, -1)
        elif key == "RIGHT":
            self._mouse_icon(c, cx, cy, fg, +1)
        elif key == "PRECISE":
            self._mouse_icon(c, cx - 3, cy + 2, fg, -1)
            self._dot(c, cx + 11, cy - 11, 5, fg)
            self._dot(c, cx + 11, cy - 11, 1.8, pal["panel"])
        elif key == "DRAG":
            self._mouse_icon(c, cx, cy - 3, fg, -1)
            self._line(c, cx - 14, cy + 21, cx + 14, cy + 21, fg)
            self._line(c, cx - 14, cy + 21, cx - 8, cy + 16, fg)
            self._line(c, cx - 14, cy + 21, cx - 8, cy + 26, fg)
            self._line(c, cx + 14, cy + 21, cx + 8, cy + 16, fg)
            self._line(c, cx + 14, cy + 21, cx + 8, cy + 26, fg)
        elif key == "SCROLL":
            self._line(c, cx - 8, cy - 8, cx, cy - 15, fg)
            self._line(c, cx + 8, cy - 8, cx, cy - 15, fg)
            self._line(c, cx - 8, cy - 1, cx, cy - 8, fg)
            self._line(c, cx + 8, cy - 1, cx, cy - 8, fg)
            self._line(c, cx - 8, cy + 8, cx, cy + 15, fg)
            self._line(c, cx + 8, cy + 8, cx, cy + 15, fg)
            self._line(c, cx - 8, cy + 1, cx, cy + 8, fg)
            self._line(c, cx + 8, cy + 1, cx, cy + 8, fg)
        elif key == "KEYS":
            self._outline_rect(c, cx - 17, cy - 12, 34, 24, fg)
            for row in range(2):
                for col in range(4):
                    self._rect(c, cx - 13 + col * 7, cy - 8 + row * 7, 4, 4, fg)
            self._rect(c, cx - 8, cy + 6, 16, 3, fg)
        elif key == "SPEAK":
            self._outline_rect(c, cx - 14, cy - 12, 28, 20, fg)
            self._line(c, cx - 8, cy + 8, cx - 8, cy + 15, fg)
            self._line(c, cx - 8, cy + 15, cx - 1, cy + 8, fg)
            self._line(c, cx - 9, cy - 5, cx + 9, cy - 5, fg)
            self._line(c, cx - 9, cy + 1, cx + 5, cy + 1, fg)
        elif key == "START":
            for dx in (-11, 1):
                for dy in (-11, 1):
                    self._rect(c, cx + dx, cy + dy, 10, 10, fg)
        elif key == "TASK":
            self._outline_rect(c, cx - 13, cy - 5, 18, 18, fg)
            self._outline_rect(c, cx - 5, cy - 13, 18, 18, fg)
        elif key == "PAUSE":
            if self.dwell_paused:
                self._line(c, cx - 7, cy - 12, cx - 7, cy + 12, fg, 3)
                self._line(c, cx - 7, cy - 12, cx + 11, cy, fg, 3)
                self._line(c, cx - 7, cy + 12, cx + 11, cy, fg, 3)
            else:
                self._rect(c, cx - 10, cy - 12, 7, 24, fg)
                self._rect(c, cx + 3, cy - 12, 7, 24, fg)
        elif key == "QUIT":
            self._line(c, cx - 9, cy - 9, cx + 9, cy + 9, fg, 4)
            self._line(c, cx + 9, cy - 9, cx - 9, cy + 9, fg, 4)

    def draw(self, c):
        try:
            self._draw(c)
        except Exception:
            pass

    def _draw(self, c):
        if not self.enabled:
            return
        pal = PALETTES.get(THEME, PALETTES["eyecontrol"])
        # launchpad
        if self.panel:
            px, py, pw, ph = self.panel
            self._rect(c, px, py, pw, ph, pal["panel"])
        for key in BUTTONS:
            x0, y0, x1, y1 = self.buttons[key]
            active = (key == self.mode) or (key == "PAUSE" and self.dwell_paused) or \
                     (key == "KEYS" and self.keyboard_open) or \
                     (key == "SPEAK" and self.tts_mode)
            if active:
                self._rect(c, x0, y0, x1 - x0, y1 - y0, pal["accent"])
                fg = pal["accent_icon"]
            else:
                self._rect(c, x0, y0, x1 - x0, y1 - y0, pal["btn"])
                fg = pal["icon"]
                if self.btn_focus == key and self.btn_progress > 0:
                    fw = (x1 - x0 - 4) * min(self.btn_progress, 1.0)
                    self._rect(c, x0 + 2, y0 + 2, fw, y1 - y0 - 4, pal["dwell_fill"])
            self._icon(c, key, (x0 + x1) / 2, (y0 + y1) / 2, fg, pal)
        # keyboard
        if self.keyboard_open and self.kb_panel:
            px, py, pw, ph = self.kb_panel
            self._rect(c, px, py, pw, ph, pal["kb_panel"])
            for (kx, ky, kw, kh, value, kind) in self.keys:
                lit = (kind == "shift" and self.shift) or \
                      (kind == "ctrl" and self.ctrl_armed)
                if lit:
                    self._rect(c, kx, ky, kw, kh, pal["kb_accent"])
                    fg = pal["kb_text"]
                else:
                    self._rect(c, kx, ky, kw, kh, pal["kb_key"])
                    fg = pal["kb_text"]
                    if self.key_focus == (value, kind) and self.key_progress > 0:
                        fw = (kw - 4) * min(self.key_progress, 1.0)
                        self._rect(c, kx + 2, ky + 2, fw, kh - 4, pal["dwell_fill"])
                label = self._key_label(value, kind)
                if label:
                    size = int(kh * (0.34 if len(label) > 2 else 0.42))
                    tx = kx + kw / 2 - len(label) * size * 0.30
                    ty = ky + kh / 2 + size * 0.36
                    self._text(c, tx, ty, label, fg, size)
            # speak-mode text strip above the keyboard
            if self.tts_mode:
                strip_y = py - 42 if not self.kb_at_top else py + ph + 8
                self._rect(c, px, strip_y, pw, 34, pal["kb_panel"])
                shown = self.tts_buffer[-52:] if self.tts_buffer else \
                    "Speak mode: type, then press Enter to say it"
                self._text(c, px + 12, strip_y + 23, shown, pal["kb_text"], 17)
        # dwell ring around the pointer
        x, y = self.pointer
        n = 28
        for i in range(n):
            a = 2 * math.pi * i / n - math.pi / 2
            dx, dy = x + RING_R * math.cos(a), y + RING_R * math.sin(a)
            on = (i / n) <= self.progress
            self._dot(c, dx, dy, 3.2 if on else 2.0,
                      pal["ring"] if on else pal["ring_bg"])
        self._dot(c, x, y, 2.6, pal["ring"])


dwell = DwellEngine()


@mod.action_class
class Actions:
    def dwell_click_set(enabled: bool):
        """Enable or disable dwell clicking."""
        dwell.enabled = enabled
        app.notify("Dwell clicking " + ("on" if enabled else "off"))

    def dwell_click_toggle():
        """Toggle dwell clicking."""
        dwell.enabled = not dwell.enabled
        app.notify("Dwell clicking " + ("on" if dwell.enabled else "off"))


def _on_launch():
    dwell.start()


try:
    app.register("launch", _on_launch)
except Exception:
    dwell.start()