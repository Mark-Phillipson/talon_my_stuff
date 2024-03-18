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
define (this | that):
    #This command relies on a word being selected and will paste the definition below
    text = edit.selected_text()
    result = user.gpt_apply_prompt("Define This Word", text)
    key(down)
    sleep(100ms)
    key(enter)
    key(enter)
    user.paste(result)
