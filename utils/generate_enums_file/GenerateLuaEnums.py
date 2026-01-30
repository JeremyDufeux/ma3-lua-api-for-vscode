import sys
import re
import os

def parse_enums(file_path):
    enums = {}
    current_enum = None
    
    if not os.path.exists(file_path):
        sys.exit(1)

    with open(file_path, 'r', encoding='utf-8') as file:
        for line in file:
            enum_match = re.match(r'Enum: \[(.+?)\]', line)
            key_value_match = re.match(r'\s*Key: \[(.*?)\] Value: \[(.*?)\]', line)
            
            if enum_match:
                current_enum = enum_match.group(1)
                enums[current_enum] = {}
            elif key_value_match and current_enum:
                key, value = key_value_match.groups()
                value = int(value) if value.isdigit() or value.lstrip('-').isdigit() else f'"{value}"'
                
                if not key or re.search(r'[^a-zA-Z0-9_]', key) or key[0].isdigit() or key in ['true', 'false', 'local', 'function', 'end']:
                    key = f'["{key}"]'
                enums[current_enum][key] = value
    
    return enums

def generate_lua(enums, output_path, version):
    os.makedirs(os.path.dirname(output_path), exist_ok=True)

    with open(output_path, 'w', encoding='utf-8') as file:
        file.write(f"--- Ma3 API version: {version}\n")
        file.write("---@meta\n\n")
        file.write("---@class Enums\n")
        file.write("Enums = {}\n\n")
        
        for enum_name in sorted(enums.keys()):
            values = enums[enum_name]
            file.write(f"-- @enum {enum_name}\n")
            file.write(f"Enums.{enum_name} = {{\n")
            
            for key, value in values.items():
                file.write(f"  {key} = {value},\n")
            
            file.write("}\n\n")

def main():
    if len(sys.argv) < 2:
        print("Usage: python generate_enums_file.py <version>")
        print("Exemple: python generate_enums_file.py 2.3")
        sys.exit(1)

    version = sys.argv[1]
    
    script_dir = os.path.dirname(os.path.abspath(__file__))
    input_file = os.path.join(script_dir, "enumsList.txt")
    
    output_dir = os.path.abspath(os.path.join(script_dir, "..", "..", "resources", version))
    output_file = os.path.join(output_dir, "ma3_enums.lua")

    enums = parse_enums(input_file)
    
    generate_lua(enums, output_file, version)

if __name__ == "__main__":
    main()
