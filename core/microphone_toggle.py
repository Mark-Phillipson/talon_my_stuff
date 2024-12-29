from talon import actions, Module

mod = Module()

# Variable to keep track of the microphone state
mic_state = "None"

@mod.action_class
class Actions:
    def microphone_toggle():
        """Toggle the microphone between None and System Default"""
        global mic_state
        if mic_state == "None":
            actions.sound.set_microphone("System Default")
            mic_state = "System Default"
        else:
            actions.sound.set_microphone("None")
            mic_state = "None"
        print(f"Microphone state: {mic_state}")