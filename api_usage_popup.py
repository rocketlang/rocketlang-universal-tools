import ctypes

title = "CodeRocket API Alert"
message = "⚠ WARNING: You are nearing your monthly API limit!"

ctypes.windll.user32.MessageBoxW(0, message, title, 1)
