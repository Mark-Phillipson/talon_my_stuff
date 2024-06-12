from talon import Module
import time

mod = Module()

@mod.action_class
class Actions:
    def enter_date_function():
        """My custom date function"""
        return time.strftime("%d/%m/%Y")