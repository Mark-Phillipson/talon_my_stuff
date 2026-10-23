from talon import Module, actions, ui, egui
from talon.egui import Window
from talon.types import Rect


mod = Module()

_WINDOW_WIDTH = 420
_WINDOW_HEIGHT = 220
_PADDING_X = 16
_PADDING_Y = 14
_BUTTON_MIN_WIDTH = 260
_BUTTON_MIN_HEIGHT = 72
_DEFAULT_CLOSE_CAPTION = "Close!"
_CLOSE_LABEL = "\n    Close!    \n"
_WINDOW_TEXT = "Hello World!"

_window = Window()
_window.title = "Talon Message Box"
_window.autosize = False
_window.decorated = True
_window.draggable = True


def _format_close_label(caption: str) -> str:
    label = (caption or "").strip() or _DEFAULT_CLOSE_CAPTION
    return f"\n\n      {label}      \n\n"


def _get_active_screen():
    try:
        return ui.active_window().screen
    except Exception:
        return ui.main_screen()


def _center_window():
    screen = _get_active_screen()
    x = screen.x + max(0, (screen.width - _WINDOW_WIDTH) / 2)
    y = screen.y + max(0, (screen.height - _WINDOW_HEIGHT) / 2)
    _window.rect = Rect(
        x,
        y,
        _WINDOW_WIDTH,
        _WINDOW_HEIGHT,
    )


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


_window.set_content(_draw_window)


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
            _center_window()
        except Exception as e:
            print(f"show_window_and_message center error: {e}")
        try:
            _window.show()
            _window.focus()
        except Exception as e:
            print(f"show_window_and_message show error: {e}")
            actions.app.notify(f"show_window_and_message failed: {e}")
