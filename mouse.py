from talon import Module, ui

mod = Module()

@mod.action_class
class Actions:
    def move_mouse(x:  int ,y:  int):
        "Moves the mouse pointer"
        ctrl.mouse_move_relative (x,-y)
