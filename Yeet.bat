@echo off
echo "_____________________"
echo "___      YEET     ___"
echo "_____________________"
set /p wdyw= What the hell do you want to do?
echo "Enter everything as written"
echo "1.Password Policy"
echo "5.Gun Its Cheeks"
if "%wdyw%"=="Password policy" GOTO:PASSPOL
if "%wdyw%"=="Gun its Cheeks" GOTO:GUNITSCHEEKS
:PASSPOL
echo "Sets passwordexpires to true."
wmic UserAccount set PasswordExpires=True
echo "Sets numbers of days before password expires."
net accounts /maxpwage:30
echo "Set password history."
net accounts /uniquepw:5
echo "Set minimum password age."
net accounts /minpwage:10
echo "Set minimum length."
net accounts /minpwlen: 12
:GUNITSCHEEKS
echo "1.Password Policy"
echo " "
echo "Sets passwordexpires to true."
wmic UserAccount set PasswordExpires=True
echo "Sets numbers of days before password expires."
net accounts /maxpwage:30
echo "Set password history."
net accounts /uniquepw:5
echo "Set minimum password age."
net accounts /minpwage:10
echo "Set minimum length."
net accounts /minpwlen: 12
