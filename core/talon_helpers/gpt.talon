^model (this | that):
    # Select all text and runs a model prompt on the text and pastes the results BELOW.
    key(ctrl-a)
    text = edit.selected_text()
    result = user.gpt_apply_prompt("", text, "")
    key(down)
    sleep(100ms)
    key(enter)
    key(enter)
    user.paste(result)
# ^model chat (this | that):
#     # Select all text and runs a model prompt on the text and read the text and put it in the clipboard
#     key(ctrl-a)
#     text = edit.selected_text()
#     result = user.gpt_apply_prompt("", text)
#     user.tts(result)
#     clip.set_text(result)
# ^define (this | that):
#     #This command relies on a word being selected and will speak the definition
#     text = edit.selected_text()
#     result = user.gpt_apply_prompt("Define This Word", text)
#     user.tts(result)
^read that:
    #This command relies on text being selected and will read the text out loud
    text = edit.selected_text()
    user.tts(text)
^read clipboard:
    text = clip.text()
    user.tts(text)
# model stop speech: #This commander is not working no idea why 2024-08-18 07:42:10
#     user.cancel_current_speech()
# ^computer <user.text>:
#     # will take the argument as a question and reply with voice
#     text = user.text
#     result = user.gpt_apply_prompt("Please reply in summary only", text)
#     user.tts(result)
# computer <user.text>:
#     # will take the argument as a question and reply with voice
#     text = user.text
#     result = user.maintain_conversation_history(text)
#     user.tts(result)
# ^computer define <user.text>:
#     # will take the argument as a question and reply with voice
#     text = user.text
#     result = user.gpt_apply_prompt("Define This Word", text)
#     user.tts(result)
# model <user.cursorless_target>:
#     # model on a cursorless target
#     text = user.cursorless_get_text(cursorless_target, true)
#     result = user.gpt_apply_prompt("", text)
#     user.tts(result)
# ^model define <user.cursorless_target>:
#     #This command relies on a cursorless target and will speak the definition
#     text = user.cursorless_get_text(cursorless_target, true)
#     result = user.gpt_apply_prompt("Define This Word", text)
#     user.tts(result)
# ^chatbot <user.text>:
#     # will take the argument as a question and reply with voice
#     text = user.text
#     prompt = """
#     Convert natural language into C# code. Include inline comments when appropriate to explain what the code is doing.

#     Do not under any circumstances include anything else other than C# code and inline code comments.

#     The intended use of the results is to be able to use the text directly in a code editor so it should compile flawlessly.

#     Also please do not include any markdown formatting in the code.

#     For example do not start the results with the word Certainly blah blah blah or at the end happy coding. As this text just gets in the way of the code.

#     Furthermore expect the input to have certain errors because voice recognition is being used to create the text for example the word four might mean the word for.

#     Example: Please create a four loop that loops through ten times and prints the current index to the console.
#     Result:
#             for (int i = 0; i < 10; i++)
#             {
#                 Console.WriteLine(i);
#             }

#     Natural Language to Be Converted Into valid C sharp code:
#         """
#     result = user.gpt_apply_prompt(prompt, text)
#     user.paste(result)
#Example call would be computer ask 'some question' to speech
#If you don't specify to speech it returns text i'm not sure why
computer <user.modelPrompt> [{user.modelSource}] [{user.modelDestination}]$:
    modelDestination = modelDestination or "to speech"
    user.gpt_apply_prompt(modelPrompt, modelSource or "", "to speech")
