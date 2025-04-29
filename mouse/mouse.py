from talon import Module, ctrl, actions

mod = Module()

@mod.action_class
class Actions:
    def move_mouse(x:  int ,y:  int):
        "Moves the mouse pointer"
        ctrl.mouse_move_relative (x,-y)
    def mouse_zoom_relative():
        "Test mouse zoom functionality"
        #actions.tracking.control_zoom_toggle(True)
        actions.tracking.zoom()