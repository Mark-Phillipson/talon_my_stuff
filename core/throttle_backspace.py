# Save this as throttle_backspace.py in your Talon user folder

from talon import actions, app, Module, Context

mod = Module()
ctx = Context()

@mod.action_class
class Actions:
    def throttle_backspace(times: int = 8, delay: float = 0.1):
        """Send backspace key 'times' times with a delay between each"""
        times = max(1, min(int(times), 15))
        for _ in range(times):
            print(f"Throttling backspace: {_ + 1}/{times}")
            actions.key("backspace")
            actions.sleep(delay)