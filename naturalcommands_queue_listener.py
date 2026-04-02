from talon import Module, actions, app, cron
from pathlib import Path

mod = Module()

QUEUE_PATHS = [
    Path(r"C:\Users\MPhil\source\repos\NaturalCommands\bin\Debug\net10.0-windows\talon_command_queue.txt"),
    Path(r"C:\Users\MPhil\source\repos\NaturalCommands\bin\Release\net10.0-windows\talon_command_queue.txt"),
]

_job = None


def _execute_phrase(phrase: str):
    phrase = phrase.strip()
    if not phrase:
        return
    words = phrase.split()
    actions.mimic(words)


def _drain_path(path: Path):
    if not path.exists():
        return

    try:
        with path.open("r+", encoding="utf-8") as f:
            contents = f.read()
            if not contents:
                return

            # Consume the queue exactly once so a failing command does not remain
            # in the file and get replayed on the next poll.
            f.seek(0)
            f.truncate()
    except Exception as e:
        app.notify("NaturalCommands queue", f"Failed to clear queue file '{path}': {e}")
        return

    for line in contents.splitlines():
        try:
            _execute_phrase(line)
        except Exception as e:
            app.notify("NaturalCommands queue", f"Failed command '{line.strip()}': {e}")


def _poll_queue():
    for queue_path in QUEUE_PATHS:
        _drain_path(queue_path)


def _start_listener():
    global _job
    if _job is not None:
        return
    _job = cron.interval("250ms", _poll_queue)


def _stop_listener():
    global _job
    if _job is None:
        return
    cron.cancel(_job)
    _job = None


@mod.action_class
class Actions:
    def naturalcommands_queue_start():
        """Start polling NaturalCommands queue files and execute each line as Talon speech."""
        _start_listener()

    def naturalcommands_queue_stop():
        """Stop polling NaturalCommands queue files."""
        _stop_listener()

    def naturalcommands_queue_process_once():
        """Process queue files once immediately."""
        _poll_queue()


app.register("ready", lambda: _start_listener())
