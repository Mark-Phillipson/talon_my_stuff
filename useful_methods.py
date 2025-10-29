from talon import Module, actions, ctrl
import random, os, time
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
        
    def folder_navigate(address: str):
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
            print(f"Invalid coordinates: {e}")
    
    def show_talon_lists(search: str = ""):
        """Show all Talon lists, optionally filtered by a search string. Always write to file and open in VS Code. If searching, include the search term at the top of the file."""
        import os
        from datetime import datetime
        talon_dir = os.path.expandvars(r"%APPDATA%")
        directory_path = os.path.join(talon_dir, "talon", "user")
        output_file_path = os.path.join(talon_dir, "talon", "user", "mystuff", "talon_my_stuff", "TalonLists.txt")
        results = []
        search = search.lower().strip() if search else ""
        
        # Debug: track files found
        debug_info = []
        
        for root, _, files in os.walk(directory_path):
            for file in files:
                if file.endswith('.talon-list'):
                    file_path = os.path.join(root, file)
                    debug_info.append(f"Found: {file_path}")
                    try:
                        with open(file_path, 'r', encoding='utf-8') as f:
                            lines = f.readlines()
                        if lines and len(lines) > 0:
                            # Handle case where first line might not have the expected format
                            first_line = lines[0].strip()
                            if ": " in first_line:
                                list_name = first_line.split(": ", 1)[1].strip()
                            else:
                                # Fallback: use filename without extension
                                list_name = os.path.splitext(file)[0]
                            list_name_lc = list_name.lower()
                            if search:
                                # If search matches list name, include all items
                                if search in list_name_lc:
                                    results.append(f"List: {list_name}")
                                    for line in lines[2:]:
                                        item = line.strip()
                                        if item:
                                            results.append(f"  - {item}")
                                    results.append("")
                                else:
                                    # Otherwise, include only matching items
                                    matching_items = [line.strip() for line in lines[2:] if line.strip() and search in line.strip().lower()]
                                    if matching_items:
                                        results.append(f"List: {list_name}")
                                        for item in matching_items:
                                            results.append(f"  - {item}")
                                        results.append("")
                            else:
                                # No search: collect all for file output
                                results.append(f"List: {list_name}")
                                for line in lines[2:]:
                                    item = line.strip()
                                    if item:
                                        results.append(f"  - {item}")
                                results.append("")
                    except Exception as e:
                        print(f"Error reading {file_path}: {e}")
        if not results:
            if search:
                results = [f"No results found for '{search}'"]
            else:
                results = ["No Talon list items found."]
        with open(output_file_path, 'w', encoding='utf-8') as writer:
            writer.write(f"All Talon Lists In all directories below {directory_path} created: {datetime.now()}\n")
            if search:
                writer.write(f"Search term: {search}\n\n")
            else:
                writer.write("\n")
            writer.write("\n".join(results))
            writer.write("\nEnd of Talon Lists")
        try:
            os.system(f'code "{output_file_path}"')
            print(f"Created and opened {output_file_path}")
        except Exception as e:
            print(f"Error opening VS Code: {e}")
    
    def open_path_in_code(path: str) -> None:
        """Open a path in VS Code"""
        try:
            os.system(f'code "{path}"')
        except Exception as e:
            print(f"Error opening path in VS Code: {e}")
    def game_click(button: int = 0):
        """Custom click for games that might need the lower-level approach"""
        ctrl.mouse_click(button, hold=16000)
    def game_double_click(button: int = 0):
        """Custom double click for games that might need lower-level approach"""
        ctrl.mouse_click(button, hold=16000)
        time.sleep(1)
        ctrl.mouse_click(button, hold=16000)
    def mouse_hold_seconds(button: int = 0, seconds: float = 1.0):
        """Hold the mouse button down for a specified number of seconds."""
        print("Holding mouse button", button, "for", seconds, "seconds")
        hold_ms = int(seconds * 1000)
        ctrl.mouse_click(button, hold=hold_ms)
