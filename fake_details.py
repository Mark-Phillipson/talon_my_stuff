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
