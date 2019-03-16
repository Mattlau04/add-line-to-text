@ECHO OFF
setlocal enabledelayedexpansion

SET /P maxlines=Enter number of line to be added (press enter without setting a value to do an infinite amount): 
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