Dim Input
Set WshShell = WScript.CreateObject("WScript.Shell")
Input = InputBox("Enter the number of minutes after which hibernation will be performed.")
 If Input <> ""  Then
    WScript.Sleep Input * 1000
   WshShell.Run "C:\Windows\System32\rundll32.exe PowrProf.dll,SetSuspendState" ,0,1
 End if

