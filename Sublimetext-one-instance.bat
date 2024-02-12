@echo off
setlocal enabledelayedexpansion

REM Registry entries for Sublime Text

REM Create registry key for folders
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\sublime_text" /ve /d "Öffnen mit Sublime Text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\sublime_text" /v "Icon" /t REG_SZ /d "\"C:\Apps\Sublime Text\sublime_text.exe\",0" /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\sublime_text\command" /ve /d "C:\Apps\Sublime Text\sublime_text.exe \"%1\"" /f

REM Create registry key for all file types
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\*\shell\sublime_text" /ve /d "Öffnen mit Sublime Text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\*\shell\sublime_text" /v "Icon" /t REG_SZ /d "\"C:\Apps\Sublime Text\sublime_text.exe\",0" /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\*\shell\sublime_text\command" /ve /d "C:\Apps\Sublime Text\sublime_text.exe \"%1\"" /f

REM Create registry entries for specific file extensions
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-build" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-commands" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-color-scheme" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-completions" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-keymap" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-macro" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-menu" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-mousemap" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-project" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-settings" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-snippets" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-syntax" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.sublime-theme" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.tmTheme" /ve /d "sublime_text" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.tmPreferences" /ve /d "sublime_text" /f

REM Create registry entry for Sublime Text File type
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\sublime_text" /ve /d "Sublime Text File" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\sublime_text\DefaultIcon" /ve /d "\"C:\Apps\Sublime Text\sublime_text.exe\",1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\sublime_text\shell\open\command" /ve /d "\"C:\Apps\Sublime Text\sublime_text.exe\" \"%1\"" /f

echo Registry entries added successfully.
