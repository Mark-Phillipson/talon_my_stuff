from talon import Module, Context, actions, cron

mod = Module()
ctx = Context()

# Configurable values
CUSTOM_MESSAGE_TOPIC = "custom_message"
CUSTOM_MESSAGE_TITLE = "Swear Jar"
CUSTOM_MESSAGE_APP_TITLE = "App Notification"
CUSTOM_MESSAGE_DISPLAY_SECONDS = 5
CUSTOM_MESSAGE_DEFAULT_LEVEL = "warning"

custom_message_balance = 0
custom_message_count = 0
_custom_message_timer_id = None


@ctx.action_class("app")
class AppActions:
    def notify(body: str = "", title: str = "", subtitle: str = "", sound: bool = False):
        message = " ".join(p for p in [title, subtitle, body] if p).strip()
        level = "critical" if any(w in message.lower() for w in ["error", "fail"]) else "warning"
        actions.user.custom_message_notify(level, message, 0, True, False, CUSTOM_MESSAGE_APP_TITLE)

@mod.action_class
class Actions:
    def custom_message_clear():
        """Clear Custom Message from HUD"""
        global _custom_message_timer_id
        _custom_message_timer_id = None
        actions.user.hud_publish_content("", CUSTOM_MESSAGE_TOPIC, "", show=False)

    def custom_message_notify(level: str = CUSTOM_MESSAGE_DEFAULT_LEVEL, message: str = None, increment: int = 1, app_message: bool = False, show_balance: bool = True, header: str = None):
        """Push a custom timed HUD message.

        app_message=True means this is from app.notify and should not increase Swear Jar amount.
        show_balance=False means don’t display jar/pound value.
        header can be used to set the HUD panel title.
        """
        global custom_message_balance, custom_message_count, _custom_message_timer_id

        level = (level or CUSTOM_MESSAGE_DEFAULT_LEVEL).lower()
        if level not in ["info", "warning", "critical"]:
            level = CUSTOM_MESSAGE_DEFAULT_LEVEL

        if not message:
            message = "That's quite enough of that"

        if app_message:
            custom_message_count += 1
            content = f"{message} (custom message #{custom_message_count})"
            log_text = f"custom message #{custom_message_count}"
        else:
            if show_balance:
                custom_message_balance += increment
                content = f"{message} (Custom Jar £{custom_message_balance})"
                log_text = f"balance {custom_message_balance}"
            else:
                content = message
                log_text = "no balance"

        panel_title = header or (CUSTOM_MESSAGE_APP_TITLE if app_message else CUSTOM_MESSAGE_TITLE)

        print(f"[custom_message] {level} / {message} ({log_text})")
        actions.user.hud_add_log(level, content)
        actions.user.hud_publish_content(content, CUSTOM_MESSAGE_TOPIC, panel_title, show=True)

        if _custom_message_timer_id is not None:
            cron.cancel(_custom_message_timer_id)

        _custom_message_timer_id = cron.after(f"{CUSTOM_MESSAGE_DISPLAY_SECONDS}s", actions.user.custom_message_clear)

    def custom_message_set_app_notify_intercept(enabled: bool = True):
        """No-op: app.notify is always routed to HUD via ctx.action_class override."""
        pass
