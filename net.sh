#!/bin/bash
URL="https://10.108.255.249/include/auth_action.php"
username=学号
password=密码
local_ip=`ifconfig -a|grep -o -e 'inet [0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}'|grep -v "127.0.0"|awk '{print $2}'`
curl $URL --insecure --data "action=login&username=$username&password=$password&ac_id=1&user_ip=$local_ip&nas_ip=&user_mac=&save_me=1&ajax=1"