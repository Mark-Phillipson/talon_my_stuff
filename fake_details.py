from talon import Module, ui
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
        for _ in range(10):
            l_random_number = random.randint(1, 9)
            random_number += str(l_random_number)
        
        return random_number