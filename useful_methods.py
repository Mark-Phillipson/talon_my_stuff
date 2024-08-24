from talon import Module, actions
import random
mod = Module()

@mod.action_class
class Actions:
    def fake_email()->str:
        """make fake email"""
        random_number = random.randint(97, 122)
        word = ''.join([chr(random.randint(97, 122)) for _ in range(10)]) + '@gmail.com'
        return word
    def generate_random_number()->str:
        """make random number"""
        random_number = ""
        for _ in range(4):
            l_random_number = random.randint(1, 9)
            random_number += str(l_random_number)
        return random_number
    def capital_strip(text: str) -> str:
        """Remove all spaces and convert to uppercase"""
        return text.replace(" ", "").upper()
    def capital_letters(word1: str, word2: str, word3: str) -> str:
        """Convert to uppercase single letters Example: alpha bravo = ABC"""
        return word1[0].upper() + word2[0].upper() + word3[0].upper() 
    def replaced_text(text: str, old: str, new: str) -> str:
        """Replace text"""
        return text.replace(old, new)
    def cancel_current_speech():
        """Cancel current speech Note this does not work!"""
        # Not all tts engines support canceling
        # Easier to just catch the exception
        try:
            actions.user.cancel_current_speaker()
            print("Cancelled current speech")
        except Exception as e:
            print("Failed to cancel current speech")
            print(e)
            pass
