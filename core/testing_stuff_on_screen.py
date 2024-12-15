from talon.canvas import Canvas
from talon import registry, app
from talon.types import Rect
from talon import ui
from talon.skia.canvas import Canvas as SkiaCanvas

def on_draw(c: SkiaCanvas):
    c.paint.color = "FF0000"
    c.paint.style = c.paint.Style.FILL
    c.draw_rect(Rect(1800,1035,100,40))

    # Set up the paint for text
    c.paint.color = "FFFFFF"  # Black color for text
    c.paint.textsize = 20  # Set text size
    c.draw_text("Command", 1800, 1062)  # Draw text at specified position

# screen: ui.Screen = ui.main_screen()

# Create a canvas object that you can draw or add text to
# canvas = Canvas.from_screen(screen)
# canvas.draggable = False
# canvas.blocks_mouse = False
# canvas.focused = False
# canvas.cursor_visible = True

# Add a callback to specify how the canvas should be drawn
#canvas.register("draw", on_draw)

# Freeze the canvas so it doesn't repeatedly refresh
# canvas.freeze()
