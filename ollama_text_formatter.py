"""Format and fix text using local Ollama server."""

import re
import requests
from talon import Module, actions, clip

mod = Module()

OLLAMA_BASE_URL = "http://localhost:11434"
DEFAULT_MODEL = "Mistral"  # Change to your preferred model

SYSTEM_PROMPT = """Format and fix the grammar on the following text using brevity and clarity.
Note that speech recognition was used, so there may be sentence fragments.
Remove punctuation when not relevant to the meaning.
Return only the corrected text without explanations or comments."""

SYSTEM_PROMPT_NO_PUNCTUATION = """Format and fix the grammar on the following text using brevity and clarity.
Note that speech recognition was used, so there may be sentence fragments.
Remove ALL punctuation from the text.
Return only the corrected text without punctuation, explanations or comments."""


@mod.action_class
class Actions:
    def ollama_format_selection():
        """Format selected text using local Ollama."""
        # Get current selection
        selected_text = actions.edit.selected_text()
        
        if not selected_text or not selected_text.strip():
            actions.app.notify("No text selected")
            return
        
        try:
            # Call Ollama API
            response = requests.post(
                f"{OLLAMA_BASE_URL}/v1/chat/completions",
                json={
                    "model": DEFAULT_MODEL,
                    "messages": [
                        {"role": "system", "content": SYSTEM_PROMPT},
                        {"role": "user", "content": selected_text}
                    ],
                    "temperature": 0.3,  # Lower for more consistent formatting
                    "max_tokens": 1000
                },
                timeout=30
            )
            
            if response.status_code == 200:
                result = response.json()
                formatted_text = result["choices"][0]["message"]["content"].strip()
                
                # Replace selection with formatted text
                actions.insert(formatted_text)
                actions.app.notify("Text formatted")
            else:
                actions.app.notify(f"Ollama error: {response.status_code}")
                
        except requests.exceptions.ConnectionError:
            actions.app.notify("Cannot connect to Ollama. Is it running?")
        except requests.exceptions.Timeout:
            actions.app.notify("Ollama request timed out")
        except Exception as e:
            actions.app.notify(f"Error: {str(e)[:50]}")
    
    def ollama_format_clipboard():
        """Format clipboard text using local Ollama."""
        clipboard_text = clip.text()
        
        if not clipboard_text or not clipboard_text.strip():
            actions.app.notify("Clipboard is empty")
            return
        
        try:
            response = requests.post(
                f"{OLLAMA_BASE_URL}/v1/chat/completions",
                json={
                    "model": DEFAULT_MODEL,
                    "messages": [
                        {"role": "system", "content": SYSTEM_PROMPT},
                        {"role": "user", "content": clipboard_text}
                    ],
                    "temperature": 0.3,
                    "max_tokens": 1000
                },
                timeout=30
            )
            
            if response.status_code == 200:
                result = response.json()
                formatted_text = result["choices"][0]["message"]["content"].strip()
                
                # Replace clipboard with formatted text
                clip.set_text(formatted_text)
                actions.app.notify("Clipboard formatted")
            else:
                actions.app.notify(f"Ollama error: {response.status_code}")
                
        except requests.exceptions.ConnectionError:
            actions.app.notify("Cannot connect to Ollama. Is it running?")
        except requests.exceptions.Timeout:
            actions.app.notify("Ollama request timed out")
        except Exception as e:
            actions.app.notify(f"Error: {str(e)[:50]}")
    
    def ollama_format_selection_no_punctuation():
        """Format selected text using local Ollama and remove all punctuation."""
        # Get current selection
        selected_text = actions.edit.selected_text()
        
        if not selected_text or not selected_text.strip():
            actions.app.notify("No text selected")
            return
        
        try:
            # Call Ollama API
            response = requests.post(
                f"{OLLAMA_BASE_URL}/v1/chat/completions",
                json={
                    "model": DEFAULT_MODEL,
                    "messages": [
                        {"role": "system", "content": SYSTEM_PROMPT_NO_PUNCTUATION},
                        {"role": "user", "content": selected_text}
                    ],
                    "temperature": 0.3,
                    "max_tokens": 1000
                },
                timeout=30
            )
            
            if response.status_code == 200:
                result = response.json()
                formatted_text = result["choices"][0]["message"]["content"].strip()
                
                # Explicitly remove all punctuation characters
                formatted_text = re.sub(r'[.,!?;:\'"()\[\]{}<>/\\|@#$%^&*_+=~`-]', '', formatted_text)
                # Clean up any extra spaces
                formatted_text = re.sub(r'\s+', ' ', formatted_text).strip()
                
                # Replace selection with formatted text
                actions.insert(formatted_text)
                actions.app.notify("Text formatted (no punctuation)")
            else:
                actions.app.notify(f"Ollama error: {response.status_code}")
                
        except requests.exceptions.ConnectionError:
            actions.app.notify("Cannot connect to Ollama. Is it running?")
        except requests.exceptions.Timeout:
            actions.app.notify("Ollama request timed out")
        except Exception as e:
            actions.app.notify(f"Error: {str(e)[:50]}")
