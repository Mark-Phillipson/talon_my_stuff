get simile <user.text>: 
    result=user.get_result_from_open_ai(text,"Please return a single word that is a simile for the given word.")    
    insert(result)
get similar [phrase] <user.text>: 
    result=user.get_result_from_open_ai(text,"Please return a similar phrase to this one")    
    insert(result)
get [meaning] phrase <user.text>: 
    result=user.get_result_from_open_ai(text,"Please return a phrase to this one with the same meaning")    
    insert(result)
get opposite [word] <user.text>: 
    result=user.get_result_from_open_ai(text,"Please return a word that is the opposite of the given word.")    
    insert(result)
computer <user.text>: 
    result=user.get_result_from_open_ai(text,"")    
    #app.notify(result)    
    #insert(result)
    user.tts(result)
script <user.text>: 
    result=user.get_result_from_open_ai(text,"")    
    insert(result)
hex color random [<user.text>]: 
    result=user.get_result_from_open_ai(text,"Please return a random hex color code.")    
    insert(result)