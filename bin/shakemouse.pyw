import ctypes
import time
# see http://msdn.microsoft.com/en-us/library/ms646260(VS.85).aspx for details
while True:
#   ctypes.windll.user32.SetCursorPos(100, 20)
    ctypes.windll.user32.mouse_event(1, 1, 0, 0,0) # left down
    time.sleep(1)
    ctypes.windll.user32.mouse_event(1, -1, 0, 0,0) # right up
    time.sleep(1)
