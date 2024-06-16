@echo off
echo Loading EDO-P...
title Edo-P
echo Please wait...
ping localhost -n 3 >nul
cls
set /a tgui=off
echo Edo-P Version 1.21
echo.
echo.
echo Type "/help" to get help on all the commands.
:prompt

set /a prompt=0
set /a romselect=0
set /a ramselect=0
set /a settingstab=0
set /a settingstab1=0
set /a settingstab2=0
set /a settingstab3=0
set /a settingstab4=0
set /a biosquestion=0
set /a biostab=0
set /a biostab1=0
set /a biostab2=0
set /a biostab3=0
set /a biostab4=0
set /a textdisplay=0

set /p prompt="EDO-P>"
if %prompt%==/func.(readro) goto readrom
if %prompt%==/func.(readra) goto readram
if %prompt%==/func.(readc) goto readcluster
if %prompt%==/func.(writera) goto writeram
if %prompt%==/func.(writec) goto writecluster
if %prompt%==/settings goto settings
if %prompt%==/TGUI goto tgui
if %prompt%==/tgui goto tgui
if %prompt%==/btb goto btb
if %prompt%==/mkc goto mkc
if %prompt%==/setVar goto setvar
if %prompt%==/power goto power
if %prompt%==/text goto text
if %prompt%==/dc goto dc
if %prompt%==/md goto md
if %prompt%==/rdir goto rdir
if %prompt%==/ftree goto ftree
if %prompt%==/edover goto edover
if %prompt%==/ucheck goto ucheck
if %prompt%==/help goto help
if %prompt%==/clear goto clear
if %prompt%==/edoos goto edoos
echo Syntax Error / Unknown command / Corrupt

goto prompt
:readrom
echo Rom Banks:
echo.
ECHO A1 A2 A3 A4
ECHO B1 B2 B3 B4
ECHO C1 C2 C3 C4
ECHO D1 D2 D3 D4
echo Select Rom to Read.
set /p romselect=">"
if %romselect%==A1 goto A1
if %romselect%==A2 goto A2
if %romselect%==A3 goto A3
if %romselect%==A4 goto A4
if %romselect%==B1 goto B1
if %romselect%==B2 goto B2
if %romselect%==B3 goto B3
if %romselect%==B4 goto B4
if %romselect%==C1 goto C1
if %romselect%==C2 goto C2
if %romselect%==C3 goto C3
if %romselect%==C4 goto C4
if %romselect%==D1 goto D1
if %romselect%==D2 goto D2
if %romselect%==D3 goto D3
if %romselect%==D4 goto D4
echo No rom selected; returning to prompt.
goto prompt
:A1
echo 1234567890
goto prompt
:A2
echo []{}()
goto prompt
:A3
echo !"£$%^&*@#~+=-_<>,.?/
goto prompt
:A4
echo qwertyuiop
goto prompt
:B1
echo asdfghjkl
goto prompt
:B2
echo zxcvbnm
goto prompt
:B3
echo F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12
goto prompt
:B4
echo fn
goto prompt
:C1
echo control
goto prompt
:C2
echo option
goto prompt
:C3
echo alt
goto prompt
:C4
echo command
goto prompt
:D1
echo ver 1.0
goto prompt
:D2
echo 00
goto prompt

:D3
echo 00
goto prompt

:D4
echo 00
goto prompt

:readram
echo Ram Banks:
echo.
ECHO A1 A2 A3 A4
ECHO B1 B2 B3 B4
ECHO C1 C2 C3 C4
ECHO D1 D2 D3 D4
echo Select Ram to Read.
set /p ramselect=">"
if %ramselect%==A1 goto A1
if %ramselect%==A2 goto A2
if %ramselect%==A3 goto A3
if %ramselect%==A4 goto A4
if %ramselect%==B1 goto B1
if %ramselect%==B2 goto B2
if %ramselect%==B3 goto B3
if %ramselect%==B4 goto B4
if %ramselect%==C1 goto C1
if %ramselect%==C2 goto C2
if %ramselect%==C3 goto C3
if %ramselect%==C4 goto C4
if %ramselect%==D1 goto D1
if %ramselect%==D2 goto D2
if %ramselect%==D3 goto D3
if %ramselect%==D4 goto D4
echo No ram selected; returning to prompt.
goto prompt
:A1
echo 00
goto prompt
:A2
echo 00
goto prompt
:A3
echo 00
goto prompt
:A4
echo 00
goto prompt
:B1
echo 00
goto prompt
:B2
echo 00
goto prompt
:B3
echo 00
goto prompt
:B4
echo 00
goto prompt
:C1
echo 00
goto prompt
:C2
echo 00
goto prompt
:C3
echo 00
goto prompt
:C4
echo 00
goto prompt
:D1
echo 00
goto prompt
:D2
echo 00
goto prompt

:D3
echo 00
goto prompt

:D4
echo 00
goto prompt

:readcluster
echo Could not read cluster. Error: 000000x11
ping localhost -n 3 >nul
goto prompt

:writeram
echo Could not write ram. Error: 000000x11
ping localhost -n 3 >nul
goto prompt

:writecluster
echo Could not write cluster. Error: 000000x11
ping localhost -n 3 >nul
goto prompt

:settingerror
echo Could not run. TGUI is off.
goto prompt

:settings
if %tgui%==off goto settingerror

echo Settings
echo =============================
echo / System / Users / Security /
echo [___________________________]
set /p settingstab=">"
if %settingstab%==system goto settingsystem
if %settingstab%==System goto settingsystem
if %settingstab%==users goto settingusers
if %settingstab%==Users goto settingusers
if %settingstab%==security goto settingsecurity
if %settingstab%==Security goto settingsecurity
echo Setting doesn't exist. Returning to prompt...
goto prompt

:settingsystem
cls
echo Settings
echo =============================
echo / System / Users / Security /
echo [________]__________________
echo.
echo [ErrorDebug]
echo [About]
set /p settingstab1=">"
if %settingstab1%==system goto settingsystem
if %settingstab1%==System goto settingsystem
if %settingstab1%==users goto settingusers
if %settingstab1%==Users goto settingusers
if %settingstab1%==security goto settingsecurity
if %settingstab1%==Security goto settingsecurity
if %settingstab1%==ErrorDebug goto settingdebug
if %settingstab1%==errorDebug goto settingdebug
if %settingstab1%==errordebug goto settingdebug
if %settingstab1%==Errordebug goto settingdebug
if %settingstab1%==About goto settingabout
if %settingstab1%==about goto settingabout
echo Setting doesn't exsist. Returning to prompt...
goto prompt

:settingdebug
set /p debug="Enter Error Code>"
if %debug%==000000x11 goto debug11
echo Code dosen't exist. Returning to prompt...
goto prompt

:debug11
echo This error code means: Not finished.
goto prompt

:settingabout
cls
echo About computer.
echo Current User: %USERNAME%
echo Edo-P 1.0
echo 16 bank rom
echo 16 bank ram
set /p settingstab2=">"
if %settingstab2%==system goto settingsystem
if %settingstab2%==System goto settingsystem
if %settingstab2%==users goto settingusers
if %settingstab2%==Users goto settingusers
if %settingstab2%==security goto settingsecurity
if %settingstab2%==Security goto settingsecurity
echo Setting doesn't exsist. Returning to prompt...
goto prompt

:settingusers
cls
echo Settings
echo =============================
echo / System / Users / Security /
echo _________[_______]__________
echo.
echo Users:
echo 1)%USERNAME%
set /p settingstab3=">"
if %settingstab3%==system goto settingsystem
if %settingstab3%==System goto settingsystem
if %settingstab3%==users goto settingusers
if %settingstab3%==Users goto settingusers
if %settingstab3%==security goto settingsecurity
if %settingstab3%==Security goto settingsecurity
echo Setting doesn't exsist. Returning to prompt...
goto prompt

:settingsecurity
cls
echo Settings
echo =============================
echo / System / Users / Security /
echo _________________[_________]
echo.
echo Security
echo.
echo IP connect: OFF [Locked]
echo Del attack shield: ON
echo.
set /p settingstab4=">"
if %settingstab4%==system goto settingsystem
if %settingstab4%==System goto settingsystem
if %settingstab4%==users goto settingusers
if %settingstab4%==Users goto settingusers
if %settingstab4%==security goto settingsecurity
if %settingstab4%==Security goto settingsecurity
echo Setting doesn't exsist. Returning to prompt...

goto prompt


:tgui
echo TGUI on.
set /a tgui=on
goto prompt

:btb
echo Boot to bios. TGUI must be turned on to boot to bios.
echo.
echo Do you want to boot to bios?
echo.
set /p biosquestion="Y/N>"
if %biosquestion%==y goto btby
if %biosquestion%==Y goto btby
if %biosquestion%==N goto btbn
if %biosquestion%==n goto btbn
echo Choice doesn't esist. Returning to prompt...
goto prompt

:btby
echo Booting to bios...
echo Please wait...
ping localhost -n 2 >nul
if %tgui%==off goto bios_err
cls
echo BIOS
echo ========================================
echo  System / Boot / Fans / Recovery / Save 
echo [______________________________________]
echo.
echo Choose a tab.
set /p biostab=">"
if %biostab%==system goto biossystem
if %biostab%==System goto biossystem
if %biostab%==Boot goto biosboot
if %biostab%==boot goto biosboot
if %biostab%==fans goto biosfans
if %biostab%==Fans goto biosfans
if %biostab%==recovery goto biosrecovery
if %biostab%==Recovery goto biosrecovery
echo Tab doesn't exist. Returning to prompt.
goto prompt

:biossystem
cls
echo BIOS
echo ========================================
echo  System / Boot / Fans / Recovery / Save 
echo [_______]_______________________________
echo.
echo [CPU_Config]
echo [Date_and_Time]
echo [About]
set /p biostab1=">"
if %biostab1%==system goto biossystem
if %biostab1%==System goto biossystem
if %biostab1%==Boot goto biosboot
if %biostab1%==boot goto biosboot
if %biostab1%==fans goto biosfans
if %biostab1%==Fans goto biosfans
if %biostab1%==recovery goto biosrecovery
if %biostab1%==Recovery goto biosrecovery
if %biostab1%==CPU_Config goto bioscpu
if %biostab1%==Date_and_Time goto biosdandt
if %biostab1%==About goto biosabout
if %biostab1%==CPU_config goto bioscpu
if %biostab1%==date_and_time goto biosdandt
if %biostab1%==about goto biosabout
echo Tab / Button doesn't exist. Returning to prompt...
goto prompt

:bioscpu
cls
echo CPU is working fine. (89.67)
echo.
goto prompt

:biosdandt
cls
echo Current date is %date%
echo Current time is %time%
goto prompt

:biosabout
cls
echo About computer:
echo.
echo Edo-P 1.0
echo Edo-Bios 1.0
goto prompt

:biosboot
cls
echo BIOS
echo ========================================
echo  System / Boot / Fans / Recovery / Save 
echo ________[______]________________________
echo.
echo Boot settings:
echo Boot order [Locked]
echo Storage Drive
echo Disk
echo Recovery
echo BIOS
set /p biostab2=">"
if %biostab2%==system goto biossystem
if %biostab2%==System goto biossystem
if %biostab2%==Boot goto biosboot
if %biostab2%==boot goto biosboot
if %biostab2%==fans goto biosfans
if %biostab2%==Fans goto biosfans
if %biostab2%==recovery goto biosrecovery
if %biostab2%==Recovery goto biosrecovery
if %biostab2%==save goto biossave
if %biostab2%==Save goto biossave
echo Tab doesn't exist. Returning to prompt...
goto prompt

:biosfans
cls
echo BIOS
echo ========================================
echo  System / Boot / Fans / Recovery / Save 
echo _______________[______]_________________
echo.
echo Fans:
echo Data took at %time%
echo CHASSIFAN1 988RPM
echo CHASSIFAN2 1009RPM
echo CPUFAN 885RPM
echo ASSISTFAN 446RPM
set /p biostab3=">"
if %biostab3%==system goto biossystem
if %biostab3%==System goto biossystem
if %biostab3%==Boot goto biosboot
if %biostab3%==boot goto biosboot
if %biostab3%==fans goto biosfans
if %biostab3%==Fans goto biosfans
if %biostab3%==recovery goto biosrecovery
if %biostab3%==Recovery goto biosrecovery
if %biostab3%==save goto biossave
if %biostab3%==Save goto biossave
echo Tab doesn't exist. Returning to prompt...
goto prompt

:biosrecovery
cls
echo BIOS
echo ========================================
echo  System / Boot / Fans / Recovery / Save 
echo ______________________[__________]______
echo.
echo Recovery Wizard
echo Recovery could not start. Error: 000000x11
set /p biostab4=">"
if %biostab4%==system goto biossystem
if %biostab4%==System goto biossystem
if %biostab4%==Boot goto biosboot
if %biostab4%==boot goto biosboot
if %biostab4%==fans goto biosfans
if %biostab4%==Fans goto biosfans
if %biostab4%==recovery goto biosrecovery
if %biostab4%==Recovery goto biosrecovery
if %biostab4%==save goto biossave
if %biostab4%==Save goto biossave
echo Tab doesn't exist. Returning to prompt...
goto prompt

:biossave
cls
echo BIOS
echo ========================================
echo  System / Boot / Fans / Recovery / Save 
echo _________________________________[_____]
echo.
echo Save and return.
echo Press any key to save.
pause >nul
goto prompt

:btbn
echo Returning to prompt...
goto prompt

:mkc
echo Could not start Make Command. Error 000000x11
goto prompt
:setvar
echo Could not set var. Error 000000x11
goto prompt
:power
echo Power off...
ping localhost -n 2 >nul
cls
echo It is now safe for you to turn off your computer.
pause >nul
exit
:text
echo Display Text.
set /p textdisplay=">"
echo %textdisplay%
goto prompt
:dc
echo Directory Change.
echo Input Directory Name:
set /p dcname=">"
cd %dcname%
echo.
goto prompt

:md
echo Make directory.
echo Input Directory Name:
set /p mdname=">"
mkdir %mdname%
echo.
goto prompt
:rdir
echo Read Directory.
echo Input Directory Name:
set /p rdirname=">"
dir %rdirname%
echo.
goto prompt
:ftree
echo Folder Tree.
echo Tree starting...
echo (Note: Navigate to the folder that you want to start the tree.)
ping localhost -n 2 >nul
tree
goto prompt
:edover
echo Edo-P version 1.0
echo.
goto prompt
:ucheck
echo No updates found.
goto prompt
:clear
echo Clearing...
cls
goto prompt
:help
echo Help.
echo Basic commands:
echo /clear - Clear the screen
echo /dc - Change the current directory
echo /rdir - Read a directory
echo /md - Make a directory
echo /text - Displays text
echo /edover - Displays the current EDO-P version
echo.
echo Internal Commands:
echo /func.(readro) - Read one of the 16 rom banks.
echo /func.(readra) - Read one of the 16 ram banks.
echo /func.(readc) - Read one of the storage device clusters.
echo /func.(writera) - Write data to one of the 16 ram banks.
echo /func.(writec) - Write data to one of the storage device clusters.
echo.
echo Other:
echo /ftree - Shows a folder tree of all the subfolders in one directory.
echo /tgui - Turns on TGUI.
echo /ucheck - Checks for updates.
echo /btb - Boots to bios. TGUI must be turned on to boot to bios.
echo /power - Makes the computer ready and safe to turn off.
echo /setVar - Set a var.
echo /settings - Starts settings.
echo /edoos - Finds an installation of Edo OS GUI
goto prompt

:edoos
echo Please specify a Edo OS GUI install disk/file
set /p %edoinstall%=">"
cd %edoinstall%
if %errorlevel%==1 goto errnotexist
echo Please wait...
echo Finding Install files...
if not exist "Core" goto errnotexist
if not exist "System" goto errnotexist
if not exist "Setup.bat" goto next
call setup.bat
:next
echo Please wait...
cd System
if not exist "so-ode.bat" goto errnotexist
cls
call so-ode.bat
:errnotexist
echo If you seeing this message, an error has occurred.
echo This could be 1 of 4 reasons.
echo.
echo 1) The install file does not exist.
echo 2) You gave a directory that doesn't exist.
echo 3) It was an internal error.
echo 4) You have not installed Edo OS GUI.
echo Returning to prompt...
goto prompt