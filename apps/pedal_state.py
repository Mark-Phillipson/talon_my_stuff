from talon import Module, actions, cron

mod = Module()

class PedalState:
    ctrl_pressed = False
    alt_pressed = False

@mod.action_class
class Actions:
    def pedal_left():
        """Toggle Ctrl key when left pedal is pressed and released Note This is for the CodeRush Plugin"""
        if not PedalState.ctrl_pressed:
            actions.key("lctrl:down")
            PedalState.ctrl_pressed = True

        else:
            actions.key("lctrl:up")
            PedalState.ctrl_pressed = False

    def pedal_right():
        """Toggle Alt key when right pedal is pressed and released Note This is for the CodeRush Plugin"""
        if not PedalState.alt_pressed:
            actions.key("rctrl:down")
            PedalState.alt_pressed = True
        else:
            actions.key("rctrl:up")
            PedalState.alt_pressed = False