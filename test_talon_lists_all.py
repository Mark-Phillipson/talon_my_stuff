import os
from datetime import datetime

def show_talon_lists_fixed_no_search():
    """Show all Talon lists without search filter."""
    talon_dir = os.path.expandvars(r"%APPDATA%")
    directory_path = os.path.join(talon_dir, "talon", "user")
    output_file_path = os.path.join(talon_dir, "talon", "user", "mystuff", "talon_my_stuff", "TalonLists_ALL_DEBUG.txt")
    results = []
    
    # Debug: track files found
    debug_info = []
    debug_info.append("=== PROCESSING ALL LISTS (NO SEARCH) ===")
    
    for root, _, files in os.walk(directory_path):
        for file in files:
            if file.endswith('.talon-list'):
                file_path = os.path.join(root, file)
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
                        
                        # No search: collect all for file output
                        results.append(f"List: {list_name}")
                        debug_info.append(f"Processing: {file_path} -> {list_name}")
                        
                        items_added = 0
                        for line_num, line in enumerate(lines[2:], start=2):
                            item = line.strip()
                            if item and not item.startswith('#'):
                                results.append(f"  - {item}")
                                items_added += 1
                        debug_info.append(f"  Added {items_added} items")
                        results.append("")
                except Exception as e:
                    debug_info.append(f"Error reading {file_path}: {e}")
                    print(f"Error reading {file_path}: {e}")
    
    if not results:
        results = ["No Talon list items found."]
    
    with open(output_file_path, 'w', encoding='utf-8') as writer:
        writer.write(f"All Talon Lists In all directories below {directory_path} created: {datetime.now()}\n\n")
        
        # Write debug info first
        writer.write("=== DEBUG INFO ===\n")
        for debug_line in debug_info[:50]:  # Limit debug info
            writer.write(f"{debug_line}\n")
        writer.write("\n=== LISTS ===\n")
        
        writer.write("\n".join(results))
        writer.write("\nEnd of Talon Lists")
    
    print(f"Created debug file: {output_file_path}")
    
    # Look specifically for user.model in results
    model_found = any("List: user.model" in line for line in results)
    print(f"user.model list found in results: {model_found}")

# Test without search
show_talon_lists_fixed_no_search()
