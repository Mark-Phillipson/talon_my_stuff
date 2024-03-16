# Select all text and runs a model prompt on the text and pastes the results BELOW.
model (this | that):
    key(ctrl-a)
    text = edit.selected_text()
    result = user.gpt_apply_prompt("", text)
    key(down)
    sleep(100ms)
    key(enter)
    key(enter)
    user.paste(result)
