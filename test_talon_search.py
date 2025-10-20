import os

# Test script to see what talon-list files are found
talon_dir = os.path.expandvars(r"%APPDATA%")
directory_path = os.path.join(talon_dir, "talon", "user")

print(f"Searching in: {directory_path}")
print("Found .talon-list files:")

found_files = []
for root, _, files in os.walk(directory_path):
    for file in files:
        if file.endswith('.talon-list'):
            file_path = os.path.join(root, file)
            found_files.append(file_path)
            print(f"  {file_path}")

print(f"\nTotal found: {len(found_files)}")

# Check if model.talon-list is in the list
model_file = None
for f in found_files:
    if "model.talon-list" in f:
        model_file = f
        break

if model_file:
    print(f"\nFound model.talon-list at: {model_file}")
    # Try to read it
    try:
        with open(model_file, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        print("Contents:")
        for i, line in enumerate(lines):
            print(f"  Line {i}: {repr(line)}")
    except Exception as e:
        print(f"Error reading file: {e}")
else:
    print("\nmodel.talon-list NOT FOUND")
