model (this | that):
    # Select all text and runs a model prompt on the text and pastes the results BELOW.
    key(ctrl-a)
    text = edit.selected_text()
    result = user.gpt_apply_prompt("", text)
    key(down)
    sleep(100ms)
    key(enter)
    key(enter)
    user.paste(result)
model chat (this | that):
    # Select all text and runs a model prompt on the text and read the text and put it in the clipboard
    key(ctrl-a)
    text = edit.selected_text()
    result = user.gpt_apply_prompt("", text)
    user.tts(result)
    clip.set_text(result)
define (this | that):
    #This command relies on a word being selected and will speak the definition
    text = edit.selected_text()
    result = user.gpt_apply_prompt("Define This Word", text)
    user.tts(result)
read that:
    #This command relies on text being selected and will read the text out loud
    text = edit.selected_text()
    user.tts(text)
read clipboard:
    text = clip.text()
    user.tts(text)
model speak:
    # will take the current selection as a question and reply with voice
    text = edit.selected_text()
    result = user.gpt_apply_prompt("", text)
    user.tts(result)
model <user.cursorless_target>:
    # model on a cursorless target
    text = user.cursorless_get_text(cursorless_target, true)
    result = user.gpt_apply_prompt("", text)
    user.tts(result)
define <user.cursorless_target>:
    #This command relies on a cursorless target and will speak the definition
    text = user.cursorless_get_text(cursorless_target, true)
    result = user.gpt_apply_prompt("Define This Word", text)
    user.tts(result)
