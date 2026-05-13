from talon import Module, actions, cron, settings

mod = Module()

mod.setting(
    "pedal_ptt_timeout_ms",
    type=int,
    default=6000,
    desc="Auto-sleep timeout for pedal press-to-talk in milliseconds",
)


class _State:
    disable_job = None


def _cancel_disable_job():
    if _State.disable_job is not None:
        cron.cancel(_State.disable_job)
        _State.disable_job = None


def _disable_speech():
    _State.disable_job = None
    actions.speech.disable()


def _schedule_auto_disable():
    _cancel_disable_job()

    timeout_ms = settings.get("user.pedal_ptt_timeout_ms")
    if not isinstance(timeout_ms, int) or timeout_ms < 200:
        timeout_ms = 200

    _State.disable_job = cron.after(f"{timeout_ms}ms", _disable_speech)


@mod.action_class
class Actions:
    def pedal_press_to_talk():
        """Enable speech and auto-disable after a short timeout. Re-press to extend the window."""
        actions.speech.enable()
        _schedule_auto_disable()
