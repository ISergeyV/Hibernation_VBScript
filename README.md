## VBScript Hibernation Timer

This VBScript allows users to set a timer in minutes, after which the script triggers the hibernation mode on the Windows operating system. It can be useful in scenarios where you want your computer to automatically hibernate after a specific duration of inactivity.

### How it works

1. The script begins by creating an instance of the `WScript.Shell` object to interact with the Windows shell.
2. It prompts the user to enter the number of minutes using an input box.
3. If the user provides a non-empty input and the input is a numeric value, the script proceeds.
4. The input is converted to milliseconds by multiplying it with 60000 (60 seconds * 1000 milliseconds).
5. The script then pauses its execution for the specified duration using the `WScript.Sleep()` method.
6. After the sleep period ends, the script executes the `rundll32.exe` command to invoke the `SetSuspendState` function from `PowrProf.dll`, which triggers the hibernation mode on the system.
7. The script terminates.

### Usage

To use this script:

1. Copy the script code into a new text file and save it with a `.vbs` extension (e.g., `hibernate_timer.vbs`).
2. Double-click the saved script file to run it.
3. An input box will appear, prompting you to enter the number of minutes. Provide a valid numeric value.
4. Wait for the specified time to pass.
5. The script will initiate the hibernation process on your system.

Note: Ensure that you have appropriate permissions to execute scripts on your system and that hibernation is supported.

Feel free to modify the script according to your specific needs or contribute improvements by creating pull requests.