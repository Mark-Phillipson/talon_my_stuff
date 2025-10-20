import os
from datetime import datetime

def show_talon_lists_fixed(search: str = ""):
    """Show all Talon lists, optionally filtered by a search string. Always write to file and open in VS Code. If searching, include the search term at the top of the file."""
    talon_dir = os.path.expandvars(r"%APPDATA%")
    directory_path = os.path.join(talon_dir, "talon", "user")
    output_file_path = os.path.join(talon_dir, "talon", "user", "mystuff", "talon_my_stuff", "TalonLists_DEBUG.txt")
    results = []
    search = search.lower().strip() if search else ""
    
    # Debug: track files found
    debug_info = []
    
    for root, _, files in os.walk(directory_path):
        for file in files:
            if file.endswith('.talon-list'):
                file_path = os.path.join(root, file)
                debug_info.append(f"Processing: {file_path}")
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
                        
                        # Check if we should include this list
                        if search:
                            # If search matches list name, include all items
                            if search in list_name_lc:
                                results.append(f"List: {list_name}")
                                debug_info.append(f"  Including list {list_name} (matches search)")
                                for line_num, line in enumerate(lines[2:], start=2):
                                    item = line.strip()
                                    if item and not item.startswith('#'):
                                        results.append(f"  - {item}")
                                        debug_info.append(f"    Added item: {item}")
                                results.append("")
                            else:
                                # Otherwise, include only matching items
                                matching_items = []
                                for line_num, line in enumerate(lines[2:], start=2):
                                    item = line.strip()
                                    if item and not item.startswith('#') and search in item.lower():
                                        matching_items.append(item)
                                if matching_items:
                                    results.append(f"List: {list_name}")
                                    debug_info.append(f"  Including list {list_name} (has matching items)")
                                    for item in matching_items:
                                        results.append(f"  - {item}")
                                        debug_info.append(f"    Added matching item: {item}")
                                    results.append("")
                        else:
                            # No search: collect all for file output
                            results.append(f"List: {list_name}")
                            debug_info.append(f"  Processing all items from {list_name}")
                            for line_num, line in enumerate(lines[2:], start=2):
                                item = line.strip()
                                if item and not item.startswith('#'):
                                    results.append(f"  - {item}")
                                    debug_info.append(f"    Added item from line {line_num}: {item}")
                            results.append("")
                except Exception as e:
                    debug_info.append(f"Error reading {file_path}: {e}")
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
        
        # Write debug info first
        writer.write("=== DEBUG INFO ===\n")
        for debug_line in debug_info:
            writer.write(f"{debug_line}\n")
        writer.write("\n=== LISTS ===\n")
        
        writer.write("\n".join(results))
        writer.write("\nEnd of Talon Lists")
    
    print(f"Created debug file: {output_file_path}")

# Test specifically with model
show_talon_lists_fixed("model")
