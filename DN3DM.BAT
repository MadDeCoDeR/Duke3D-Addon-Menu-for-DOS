@ECHO OFF
MOUNT D ".."
:menu
cls

@ECHO [1;33m[43mษออออออออออออออออออออออออออออออออออออออออออออออออออออป
@ECHO บ -------------------------------------------------- บ
@ECHO บ Duke Nukem 3D Launch Menu                          บ
@ECHO บ -------------------------------------------------- บ
@ECHO บ 1) Duke Nukem 3D Atomic Edition                    บ
@ECHO บ 2) Duke it out in D.C.                             บ
@ECHO บ 3) Duke Nucklear Winter                            บ
@ECHO บ 4) Duke Caribbean Life's a Beach                   บ
@ECHO บ 5) Setup                                           บ
@ECHO บ                                                    บ
@ECHO บ -------------------------------------------------- บ
@ECHO บ 6) Exit Menu                                       บ
@ECHO บ -------------------------------------------------- บ
@ECHO ศออออออออออออออออออออออออออออออออออออออออออออออออออออผ[0m
@ECHO NOTE: If it asks you to "COPY INTERNAL DEFAULTS TO DIRECTORY" press n

@choice /c123456 /s Which option do you want to run? [1-6] /n
if errorlevel 6 goto END
if errorlevel 5 goto SETUP
if errorlevel 4 goto CLB
if errorlevel 3 goto NW
if errorlevel 2 goto DC
if errorlevel 1 goto main

:main
cls
DUKE3D.EXE
pause
goto menu

:DC
cls 
REN GAME.CON GAME1.CON
REN DEFS.CON DEFS1.CON
REN USER.CON USER1.CON
DUKE3D.EXE /gD:\ADDONS\dc\dukedc.grp
pause
REN GAME1.CON GAME.CON
REN DEFS1.CON DEFS.CON
REN USER1.CON USER.CON
goto menu

:NW
cls
DUKE3D.EXE /xD:\ADDONS\nw\nwinter.con /gD:\ADDONS\nw\nwinter.grp
pause
goto menu

:CLB
cls
REN GAME.CON GAME1.CON
REN DEFS.CON DEFS1.CON
REN USER.CON USER1.CON
DUKE3D.EXE /gD:\ADDONS\vacation\vacation.grp
pause
REN GAME1.CON GAME.CON
REN DEFS1.CON DEFS.CON
REN USER1.CON USER.CON
goto menu

:SETUP
cls
SETUP.EXE
goto menu

:END
exit