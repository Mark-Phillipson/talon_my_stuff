from talon import Context, Module, actions, settings

ctx = Context()
mod = Module()

@mod.action_class
class UserActions:

    def model_switch():
        """Switches models between conformer and hum"""
        if settings.get("speech.engine") == "wav2letter":
            ctx.settings["speech.engine"] = "Hum (2026-09-20)"
        elif settings.get("speech.engine") == "Hum (2026-09-20)":
            ctx.settings["speech.engine"] = "wav2letter"