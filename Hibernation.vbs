Dim input, time
Set WshShell = WScript.CreateObject("WScript.Shell")
input = InputBox("Enter the number of minutes after which hibernation will be performed.")
 If input <> "" and IsNumeric(input)  Then
 time = input * 60000
    WScript.Sleep(time)
	MsgBox time
   'WshShell.Run "C:\Windows\System32\rundll32.exe PowrProf.dll,SetSuspendState" ,0,1
 End if

