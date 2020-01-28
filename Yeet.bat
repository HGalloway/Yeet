@echo off
:YEET
echo "_____________________"
echo "___      YEET     ___"
echo "_____________________"
echo "You better run this as root or imma smack you"
set /p wdyw= What the hell do you want to do?
echo "Enter everything as written"
echo "1.Password Policy"
echo "2.User Authentication"
echo "3.Uninstall Unneeded Program"
echo "5.Gun Its Cheeks"
if "%wdyw%"=="Password policy" GOTO:PASSPOL
if "%wdyw%"=="User Authentication" GOTO:USERAUTH
if "%wdyw%"=="Uninstal Unneeded Programs" GOTO:UUP
if "%wdyw%"=="Gun its Cheeks" GOTO:GUNITSCHEEKS
:PASSPOL
echo "1.Password Policy"
echo " "
echo "Turning on expiry passwords."
wmic UserAccount set PasswordExpires=True
echo "Setting maximum password age."
net accounts /maxpwage:30
echo "Setting password history."
net accounts /uniquepw:5
echo "Setting minimum password age."
net accounts /minpwage:10
echo "Setting minimum length."
net accounts /minpwlen: 12

:USERAUTH
echo "Do you want to add or delete a user"
echo "If you don't want to then enter 'Nope'"
set /p aod=""
if "%aod%"=="Delete" goto:Delete
if "%aod%"=="Add" goto:Add
if "%aod%"=="Nope" goto:YEET
:Add 
echo "Name of user you want to add:"
set /p add=""
set /p password="Password:"
echo "So you want to add a user by the name of %add% and with the password of %password%"
set /p yon=""
if "%yon%"=="Yes" net user %add% %password% /add
if "%yon%"=="No" goto:USERAUTH
:Delete
echo "Users:"
net users
echo "What user do you want to delete?"
set /p del=""
echo "Are you sure you want to delete %del%" 
set /p yon=""
if "%yon%"=="Yes" net user "%del%" /delete
goto:USERAUTH
if "%yon%"=="No" goto:USERAUTH

:UUP
wmic product get name
rem https://www.digitalcitizen.life/six-ways-removeuninstall-windows-programs-and-apps

:GUNITSCHEEKS
echo "1.Password Policy"
echo " "
echo "Turns on expiry passwords."
wmic UserAccount set PasswordExpires=True
echo "Set maximum password age."
net accounts /maxpwage:30
echo "Set password history."
net accounts /uniquepw:5
echo "Set minimum password age."
net accounts /minpwage:10
echo "Set minimum length."
net accounts /minpwlen: 12
