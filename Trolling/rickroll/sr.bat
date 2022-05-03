if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
TIMEOUT /T 600
START "" https://www.youtube.com/watch?v=xm3YgoEiEDc
TIMEOUT /T 3
START CMD -command "$wshell = New-Object -ComObject wscript.shell;[system.Diagnostics.Process]::Start(\"msedge\",\"about:blank\");Sleep 1;$wshell.SendKeys('^"{l}"');Sleep 1;$wshell.SendKeys('https://fakeupdate.net/win10ue/');$wshell.SendKeys('"{Enter}"');$wshell.SendKeys('"{F11}"')"
exit