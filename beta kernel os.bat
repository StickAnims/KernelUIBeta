@echo off
title Kernel OS (indev-test for cmDos 2.5 cmd edition)
cls
set pass=pass
set user=User
mode con:cols=64 lines=32
if exist setting.txt (
:welcome
cls
echo Welcome to Kernel OS!
echo.
echo Type your password (logged as %user%^)
set /p pass=
if %pass%==%pass% goto start-off
if %pass%==%random% exit /b
) else (
copy nul > setting.txt
echo Welcome to Kernel OS!
echo Creating your username using real one...
copy /y NUL setting.txt
echo username:%username%>>setting.txt
set /p pass=Create new password: 
echo password:%pass%>>setting.txt
timeout /t 3 /nobreak>nul
)
:start-off
cls
echo ----------------------------------------------------------------
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo ----------------------------------------------------------------
echo - Start - 1  2  3                      %time%  %date% -
echo ----------------------------------------------------------------
set /p answer=
if %answer%=="" goto start-on
if %answer%==parrots curl parrot.live
if %answer%==1 open help.mp4
if %answer%==2 goto settings
if %answer%==%random% exit /b
if %answer%==taskbar (
cls
echo 1 - Help
echo 2 - cmDoStore
echo 3 - FarMan
echo.
echo Type "back" to close program.
set /p answer=
if %answer%==back goto start-off
if %answer%==%random% exit /b
)
:start-on
cls
echo ----------------------------------------------------------------
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo ----------------------                                         -
echo - Upgrade to Ultimate-                                         -
echo -                    -                                         -
echo - cmTexter           -                                         -
echo - cmPlayer           -                                         -
echo - cmDoStore          -                                         -
echo - File Manager       -                                         -
echo -                    -                                         -
echo - Shutdown           -                                         -
echo -                    -------------------------------------------
echo - Start              - 1  2  3         %time%  %date% -
echo ----------------------------------------------------------------
set /p answer=
if %answer%=="" goto start-off
if %answer%==%random% exit /b
if %answer%==parrots curl parrot.live
if %answer%==1 help.mp4
if %answer%==2 goto settings
if %answer%==shutdown goto shutdown
if %answer%==taskbar (
cls
echo 1 - Help
echo 2 - Settings
echo 3 - cmDoStore
echo.
echo Type "back" to close program.
set /p answer=
if %answer%==back goto start-on
if %answer%==%random% exit /b
)
:shutdown
cls
echo ----------------------------------------------------------------
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo ----------------------                                         -
echo - Shutdown by...     -                                         -
echo -                    -                                         -
echo - ...turning off?    -                                         -
echo - ...logging off?    -                                         -
echo - ...rebooting?      -                                         -
echo - ...not safe?       -                                         -
echo -                    -                                         -
echo - ^< Back             -                                         -
echo -                    -------------------------------------------
echo - Start              - 1  2  3         %time%  %date% -
echo ----------------------------------------------------------------
set /p answer=
if %answer%==1 help.mp4
if %answer%==2 goto settings
if %answer%==back goto start-on
if %answer%==reboot goto welcome
if %answer%==logoff goto welcome
if %answer%==turnoff (
cls
echo Bye bye!
timeout /t 2 /nobreak>nul
exit /b
)
if %answer%==ns exit /b
:settings
cls
echo ----------------------------------------------------------------
echo -                   Settings                                   -
echo ----------------------------------------------------------------
echo -                                                              -
echo - Using: cmDos 2.1                                             -
echo -        with Kernel UI installed                              -
echo -                                                              -
echo -                                                              -
echo - Change screen resolution    64x31 (4:3)                      -
echo - (res: 4, 16)                128x60 (16:9)                    -
echo -                                                              -
echo -                             (P.S. you won't see              -
echo -                             real widescreen while            -
echo -                             I'm fixing it :^)                 -
echo -                                                              -
echo -                                                              -
echo - Change password  (passchange)                                -
echo - Who created this? (creds)                                    -
echo -                                                              -
echo -                                                              -
echo -                     Close (close)                            -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo ----------------------------------------------------------------
echo - Start - 1  2  3                      %time%  %date% -
echo ----------------------------------------------------------------
set /p answer=
if %answer%==res4 mode con:cols=64 lines=32&goto settings
if %answer%==res16 mode con:cols=128 lines=61&goto settings
if %answer%==passchange goto passchange
if %answer%==creds goto creds
if %answer%==close goto start-off
:passchange
cls
echo Type your new password:
echo System will be rebooted to save changes.
set /p pass=
if %pass%==back goto settings
copy /y NUL setting.txt
echo username:%username%>>setting.txt
echo password:%pass%>>setting.txt
goto welcome
:creds
cls
echo ----------------------------------------------------------------
echo -                   Settings                                   -
echo ----------------------------------------------------------------
echo -                                                              -
echo -          - PUBLISHER -      Sticky Animations                -
echo -          - CREATOR -        Musohranov Sergey                -
echo -          - PROGRAMMER -     Musohranov Sergey                -
echo -                                                              -
echo -                                                              -
echo -                    Sticky Animations                         -
echo -                                                              -
echo -          - DIRECTOR -       Musohranov Sergey                -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo -                                                              -
echo ----------------------------------------------------------------
echo - Start - 1  2  3                      %time%  %date% -
echo ----------------------------------------------------------------
C:\Windows\nircmd.exe mediaplay 14000 D:\cmDos\resources\wav\creds.wav
pause>nul
goto settings