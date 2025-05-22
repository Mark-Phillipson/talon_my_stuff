from talon import Module, actions, ctrl
import random, os
from datetime import datetime
import subprocess

mod = Module()

@mod.action_class
class Actions:
    def fake_email() -> str:
        """make fake email"""
        random_number = random.randint(97, 122)
        word = ''.join([chr(random.randint(97, 122)) for _ in range(10)]) + '@gmail.com'
        return word

    def generate_random_number() -> str:
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

    def calculate_minus(value: str, take_off: str) -> str:
        """Calculate Result"""
        # Convert to integer
        newValue = int(value) - int(take_off)
        return str(newValue)

    def calculate_plus(value: str, add: str) -> str:
        """Calculate Result"""
        # Convert to integer
        newValue = int(value) + int(add)
        return str(newValue)

    def calculate_multiply(value: str, multiply: str) -> str:
        """Calculate Result"""
        # Convert to integer
        newValue = int(value) * int(multiply)
        return str(newValue)

    def calculate_divide(value: str, divide: str) -> str:
        """Calculate Result"""
        # Convert to integer
        newValue = int(value) / int(divide)
        return str(newValue)
    def folder_navigate(address: str) :
        """Navigate to folder"""
        # Open the windows file explorer and navigate to the folder
        if os.path.isdir(address):
            os.startfile(address)
        else:
            print("The specified path does not exist.")
    def open_file(file_path: str) -> None:
        """Open a file with the default application"""
        if os.path.isfile(file_path):
            os.startfile(file_path)
        else:
            print("The specified file does not exist.")        
    def move_mouse_from_string(mouse_coordinates: str):
        """Move mouse to coordinates given as a string like 100, 100."""
        try:
            x_str, y_str = mouse_coordinates.split(",")
            x = int(x_str.strip())
            y = int(y_str.strip())
            ctrl.mouse_move(x, y)
        except Exception as e:
            print(f"Invalid coordinates: {e}")    def show_talon_lists():
        """Create a text file with all Talon lists and open in VS Code"""
        # Get path to Talon community directory
        talon_dir = os.path.expandvars(r"%APPDATA%\talon")
        directory_path = os.path.join(talon_dir, "user", "community")
        output_file_path = os.path.join(talon_dir, "user", "mystuff", "talon_my_stuff", "TalonLists.txt")
        
        # Create the file with lists
        with open(output_file_path, 'w', encoding='utf-8') as writer:
            writer.write(f"All Talon Lists In all directories below {directory_path} created: {datetime.now()}\n")
            
            # Walk through all files in directory and subdirectories
            for root, _, files in os.walk(directory_path):
                for file in files:
                    if file.endswith('.talon-list'):
                        file_path = os.path.join(root, file)
                        
                        with open(file_path, 'r', encoding='utf-8') as f:
                            lines = f.readlines()
                        
                        # Get list name from first line
                        if lines:
                            list_name = lines[0].split(": ", 1)[1].strip()
                            writer.write(f"List: {list_name}\n")
                            
                            # Write list items starting from third line
                            for line in lines[2:]:
                                writer.write(f"  - {line.strip()}\n")
                            
                            writer.write("\n")
            
            writer.write("End of Talon Lists")        # Open in VS Code
        try:
            os.system(f'code "{output_file_path}"')
            print(f"Created and opened {output_file_path}")
        except Exception as e:
            print(f"Error opening VS Code: {e}")