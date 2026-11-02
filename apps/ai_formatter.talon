# Commands for formatting text with OpenAI

format fragment:
    result = user.get_result_from_open_ai("", "Grammatically format this text")
    insert(result)
format fragment no punctuation:
    result = user.get_result_from_open_ai("", "Grammatically format this text without punctuation")
    insert(result)
