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
echo "5.Gun Its Cheeks"
if "%wdyw%"=="Password policy" GOTO:PASSPOL
if "%wdyw%"=="User Authentication" GOTO:USERAUTH
if "%wdyw%"=="Gun its Cheeks" GOTO:GUNITSCHEEKS
:PASSPOL
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
:USERAUTH
echo "Do you want to add or delete a user"
echo "If you don't want to then enter 'Nope'"
set /p aod=""
if "%aod%"=="Delete" goto:Delete
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
if "%aod%"=="Nope" goto:YEET
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
