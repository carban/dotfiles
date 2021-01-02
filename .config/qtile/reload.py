from pynput.keyboard import Key, Controller

keyboard = Controller()

with keyboard.pressed(Key.cmd):
    keyboard.press(Key.ctrl)
    keyboard.press(Key.space)
    keyboard.release(Key.ctrl)
    keyboard.release(Key.space)

keyboard.release(Key.cmd)
