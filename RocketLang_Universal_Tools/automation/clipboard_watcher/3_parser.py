import re
import os

def parse_multiple_files(text, save_folder):
    blocks = re.findall(r'=== START OF (.+?) ===(.*?)=== END OF \1 ===', text, re.DOTALL)
    for filename, content in blocks:
        clean_content = re.sub(r'=== START OF .+? ===|=== END OF .+? ===', '', content, flags=re.DOTALL).strip()
        file_path = os.path.join(save_folder, filename.strip())
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(clean_content)
        print(f"[SAVED] {file_path}")

