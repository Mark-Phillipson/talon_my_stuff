from talon import Module, imgui

mod = Module()
print("LOADING IMGUITEST")

@imgui.open()
def imgui_test_window(gui: imgui.GUI):
    gui.text("This is a minimal ImGui test window.")

@mod.action_class
class Actions:
    def hello_action():
        """Print hello for debug"""
        print("HELLO ACTION CALLED")

    def imgui_test_toggle():
        """Show/hide the minimal ImGui test window"""
        if imgui_test_window.showing:
            imgui_test_window.hide()
            print("Minimal ImGui test window closed.")
        else:
            imgui_test_window.show()
            print("Minimal ImGui test window opened.")