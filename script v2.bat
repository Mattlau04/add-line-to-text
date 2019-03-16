@ECHO OFF
setlocal enabledelayedexpansion

SET /P maxlines=Enter number of line to be added (press enter without setting a value to do an infinite amount): 
SET /A linecount=0
:beforeset:
echo do you want to add       1.increasing numbers       2.specific text?
SET /P lineoption=type 1 or 2: 
if %lineoption% EQU 1 goto 1
if %lineoption% EQU 2 goto 2
echo invalid option :/
goto beforeset

:1:
SET /A linecount=0
echo remaining: %maxlines%
:start:
IF !linecount! GEQ %maxlines% GOTO Exit
SET /A linecount+=1
ECHO !linecount!>> output.txt
SET /A disp=%maxlines%-!linecount!
echo remaining: !disp!
goto start

:Exit
ECHO Done!
echo _____________________
ECHO Press any key to exit
PAUSE>NUL
EXIT

:2:
SET /P text=text to add: 
echo remaining: %maxlines%
:start2:
IF !linecount! GEQ %maxlines% GOTO Exit2
SET /A linecount+=1
ECHO %text%>> output.txt
SET /A disp=%maxlines%-!linecount!
echo remaining: !disp!
goto start2

:Exit2
ECHO Done!
echo _____________________
ECHO Press any key to exit
PAUSE>NUL
EXIT
