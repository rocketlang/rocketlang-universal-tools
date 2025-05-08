import os
import time
import pyperclip
from parser import parse_multiple_files

SAVE_FOLDER = os.path.expanduser('~/rocketlang-universal-drafts')

if not os.path.exists(SAVE_FOLDER):
    os.makedirs(SAVE_FOLDER)

def watch_clipboard():
    print("[INFO] Watching clipboard...")
    recent_text = ""
    while True:
        text = pyperclip.paste()
        if text != recent_text and '=== START OF' in text:
            print("[INFO] New multi-file block detected from clipboard!")
            parse_multiple_files(text, SAVE_FOLDER)
            recent_text = text
        time.sleep(5)

if __name__ == "__main__":
    watch_clipboard()

