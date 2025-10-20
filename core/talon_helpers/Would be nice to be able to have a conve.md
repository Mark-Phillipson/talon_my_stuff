Would be nice to be able to have a conversation with the model with the responses back in voice.

For example "what is the capital of France?" and the model would reply with "Paris".

Talon file script example:

```talon
computer <user.text>:
    # will take the argument as a question and reply with voice
    text = user.text
    result = user.gpt_apply_prompt("Please reply in summary only", text)
    user.tts(result)
```

This is a simple example of how to use the model to reply to a question in voice. The model will reply with a summary of the text.

It would also be beneficial to have a feature that allows us to add each interaction to a list for the model to record. Additionally, we would require the functionality to clear this list when necessary.

For example "what is the capital of France?" and the model were reply it with "Paris". Then the user asked "what's about Germany?" The model would reply with "Berlin".

```talon
computer <user.text>:
    # will take the argument as a question and reply with voice
    text = user.text
    user.add_to_list(text)
    result = user.gpt_apply_prompt("Please reply in summary only", user.get_list())
    user.tts(result)
```

This is a simple example of how to use the model to reply to a list of questions in voice. The model will reply with a summary of the list.  Note the add to list functionality would have to be implemented.

Also it's a bit of a stretch to have the text to speech here as not everybody would have it installed so not sure how to get around that.