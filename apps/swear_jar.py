from talon import Module, actions, cron

mod = Module()

# Configurable values
SWEAR_JAR_TOPIC = "swear_jar_message"
SWEAR_JAR_TITLE = "Swear Jar"
SWEAR_JAR_DISPLAY_SECONDS = 5
SWEAR_JAR_FINE_AMOUNT = 1
SWEAR_JAR_DEFAULT_LEVEL = "warning"

swear_jar_balance = 0
_swear_jar_timer_id = None

@mod.action_class
class Actions:
    def swear_jar_clear():
        """Clear swear jar message from HUD"""
        global _swear_jar_timer_id
        _swear_jar_timer_id = None
        actions.user.hud_publish_content("", SWEAR_JAR_TOPIC, "", show=False)

    def swear_jar_notify(level: str = SWEAR_JAR_DEFAULT_LEVEL, message: str = "That's quite enough of that", increment: int = SWEAR_JAR_FINE_AMOUNT):
        """Push a swear jar message into HUD and auto-dismiss with a timer."""
        global swear_jar_balance, _swear_jar_timer_id

        level = (level or SWEAR_JAR_DEFAULT_LEVEL).lower()
        if level not in ["info", "warning", "critical"]:
            level = SWEAR_JAR_DEFAULT_LEVEL

        if level == "critical":
            icon = "🚨"
            styled = "<!!"
        elif level == "warning":
            icon = "⚠️"
            styled = "<!"
        else:
            icon = "ℹ️"
            styled = "<@"

        swear_jar_balance += increment

        content = (
            f"{icon} {styled} {message} (Swear Jar £{swear_jar_balance}) />"
            if styled else f"{icon} {message}"
        )

        actions.user.hud_publish_content(content, SWEAR_JAR_TOPIC, SWEAR_JAR_TITLE, show=True)

        if _swear_jar_timer_id is not None:
            cron.cancel(_swear_jar_timer_id)

        _swear_jar_timer_id = cron.after(f"{SWEAR_JAR_DISPLAY_SECONDS}s", actions.user.swear_jar_clear)
