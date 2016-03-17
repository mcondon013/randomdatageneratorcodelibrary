@echo off
rem copy app options files
set WordListsFolderPath=WordLists
set appTargetPath=%1
set appTargetFileName=%2
set appConfiguration=%3
@echo WordListsFolderPath: %WordListsFolderPath%
@echo appTargetPath: %appTargetPath%
@echo appTargetFileName: %appTargetFileName%
@echo appConfiguration: %appConfiguration%
set "appExeName=%~nx1"
set "appOutputFolder=%~dp1"
@echo appExeName: %appExeName%
@echo appOutputFolder: %appOutputFolder%
if not exist %appOutputFolder% md %appOutputFolder%
@echo off
@echo xcopy ..\..\..\%WordListsFolderPath%\Top100NameLists\*.* %appOutputFolder%%WordListsFolderPath%\Top100NameLists\*.* /S /Y
xcopy ..\..\..\%WordListsFolderPath%\Top100NameLists\*.* %appOutputFolder%%WordListsFolderPath%\Top100NameLists\*.* /S /Y
@echo xcopy ..\..\..\%WordListsFolderPath%\TopLocationLists\*.* %appOutputFolder%%WordListsFolderPath%\TopLocationLists\*.* /S /Y
xcopy ..\..\..\%WordListsFolderPath%\TopLocationLists\*.* %appOutputFolder%%WordListsFolderPath%\TopLocationLists\*.* /S /Y
@echo xcopy ..\..\..\%WordListsFolderPath%\TopWordLists\*.* %appOutputFolder%%WordListsFolderPath%\TopWordLists\*.* /S /Y
xcopy ..\..\..\%WordListsFolderPath%\TopWordLists\*.* %appOutputFolder%%WordListsFolderPath%\TopWordLists\*.* /S /Y


:procexit
exit
