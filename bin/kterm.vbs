p = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
emacspath = p & "\kterm.cmd"
'WScript.Echo emacspath 'get absolute path
CreateObject("Wscript.Shell").Run emacspath, 0, True
