from talon import Module, actions
import re

mod = Module()

@mod.action_class
class Actions:
    def improve() -> str:
        """Improve the text in the current selection."""
        #  get the selected text that is to be improved
        improved = actions.edit.selected_text()
        #  reduce any double spaces to a single space
        improved = improved.replace ("  ", " ") 
        # add space after periods
        improved = re.sub(r'\.(\S)', '. \\1', improved) 
        #  capitalize first Letter after a period
        improved = re.sub(r'(\. )([a-z])', lambda m: m.group(1) + m.group(2).upper(), improved)
        print(improved)
        return improved