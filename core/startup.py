from talon import app, actions

def on_launch():
    actions.mode.enable("dictation")

app.register("launch", on_launch)