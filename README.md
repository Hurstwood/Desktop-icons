# Desktop Icons

An AutoHotkey script that toggles the visibility of desktop icons.

## Keyboard shortcut

`Win + Alt + D` — Toggle desktop icons on or off.

This shortcut was chosen because:

- `Win + D` shows the desktop.
- `Win + Ctrl + D` creates a new virtual desktop.

## Compatibility

- The current version is compatible with Windows 11 25H2.
- A legacy version is included for many Windows 10 releases, including the final update.

## Run at startup

To launch the script automatically when Windows starts, place the compiled executable in one of the following Startup folders.

### All users

Path:

`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup`

Or press `Win + R` and run:

`shell:common startup`

### Current user only

Path:

`C:\Users\<username>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`

Or press `Win + R` and run:

`shell:startup`

## Stop the program

Once started, the program continues to run in the background.

To stop it:

1. Open **Task Manager** (`Ctrl + Shift + Esc`).
2. Select the **Processes** tab.
3. Under **Background processes**, locate the program.
4. Right-click the program and select **End task**.
