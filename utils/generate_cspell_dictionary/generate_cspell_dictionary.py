import json
import re
import os
import sys

MANUAL_WORDS = {"tripel", "UILG", "lowlight", "Pyro", "Cmdline", "Skinematic", "datapools"}

def generate_dictionary(version):
    base_path = os.path.dirname(os.path.abspath(__file__))
    project_root = os.path.dirname(os.path.dirname(base_path))
    resource_dir = os.path.join(project_root, 'resources', version)
    
    if not os.path.exists(resource_dir):
        print(f"Error: Directory {resource_dir} not found.")
        return

    words = MANUAL_WORDS.copy()

    json_files = ['ma3_object_free.json', 'ma3_object.json', 'ma3_object_free_no_doc.json', 'ma3_object_no_doc.json']
    for file_name in json_files:
        file_path = os.path.join(resource_dir, file_name)
        if os.path.exists(file_path):
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                    for key in data.keys():
                        name = key.split(':')[-1] if ':' in key else key
                        if not name.startswith('_'):
                            words.add(name)
            except Exception as e:
                print(f"Warning: Could not parse {file_name}: {e}")

    if not words:
        print("No words found to generate dictionary.")
        return

    output_path = os.path.join(resource_dir, 'ma3_dictionary_for_cspell.txt')
    try:
        sorted_words = sorted(list(words))
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(f"# GrandMa3 API Dictionary - Version {version}\n")
            f.write(f"# Generated automatically\n\n")
            for word in sorted_words:
                f.write(f"{word}\n")
        print(f"Success: Created dictionary at {output_path}")
        print(f"Total words: {len(sorted_words)}")
    except Exception as e:
        print(f"Error writing output file: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python generate_cspell_dictionary.py [version]")
        print("Example: python generate_cspell_dictionary.py 2.3")
    else:
        generate_dictionary(sys.argv[1])
