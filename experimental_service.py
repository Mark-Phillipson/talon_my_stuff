from talon import Module
import requests
import os

mod = Module()

# Set your OpenAI API key
API_KEY = os.getenv("OPENAI_API_KEY")

@mod.action_class
class Actions:
    def get_result_from_open_ai(value: str,prompt: str) -> str:
        """Get a simile for the given value using OpenAI"""
        print(prompt, value)
        #print("API_KEY:", API_KEY)
        headers = {
            "Content-Type": "application/json",
            "Authorization": f"Bearer {API_KEY}"
        }
        data = {
            "model": "gpt-4-turbo",
            "messages": [
                {"role": "system", "content": "You are a helpful assistant."},
                {"role": "user", "content": f"{prompt} '{value}':"}
            ],
            "max_tokens": 20
        }
        response = requests.post("https://api.openai.com/v1/chat/completions", headers=headers, json=data)
        response_json = response.json()
        print(response_json)

        if 'choices' in response_json and len(response_json['choices']) > 0:
            return response_json['choices'][0]['message']['content'].strip()
        else:
            return "No choices available"  # Example default value
    
