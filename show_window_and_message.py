from talon import Module, ui, egui,axquery
from talon.egui import Window
from talon.types import Rect


mod = Module()

_WINDOW_WIDTH = 420
_WINDOW_HEIGHT = 220
_PADDING_X = 16
_PADDING_Y = 14
_BUTTON_MIN_WIDTH = 180
_BUTTON_MIN_HEIGHT = 48
_CLOSE_LABEL = "\n      CLOSE      \n"
_WINDOW_TEXT = "Hello World!"

_window = Window()
_window.title = "Talon Message Box"
_window.autosize = True
_window.decorated = True
_window.draggable = True


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
    def show_window_and_message(text: str = "Hello World!"):
        """Show the window with custom text."""
        global _WINDOW_TEXT

        _WINDOW_TEXT = (text or "").strip() or "Hello World!"
        _center_window()
        _window.show()
        _window.focus()
    def print_all_buttons():
        """Print all window buttons using axquery."""
        print("All buttons:")
        for element in axquery.query_all("button"):
            print(element)
