@echo off
echo *********Fudan NetConnect Program By Leizi*********
echo.
set URL="https://10.108.255.249/include/auth_action.php"
set username=学号
set password=密码
set local_ip=10.131.247.111
curl %URL% --insecure --data "action=login&username=%username%&password=%password%&ac_id=1&user_ip=%local_ip%&nas_ip=&user_mac=&save_me=1&ajax=1"
echo.
pause