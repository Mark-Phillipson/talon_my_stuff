from talon import Module
from ctypes import windll, Structure, c_long, byref

mod = Module()

class POINT(Structure):
    _fields_ = [("x", c_long), ("y", c_long)]
@mod.action_class
class Actions:
    def query_mouse_position_x()->int:
        "Returns the current position of the mouse cursor x"
        pt = POINT()
        windll.user32.GetCursorPos(byref(pt))
        return pt.x
    def query_mouse_position_y()->int:
        "Returns the current position of the mouse cursor y"
        pt = POINT()
        windll.user32.GetCursorPos(byref(pt))
        return pt.y

# pos = queryMousePosition()
# print(pos)

