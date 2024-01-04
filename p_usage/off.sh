/*
*This script i use to switch off my pc after a specified period of time
*/

#!/bin/bash
echo 'How after how many h or m'
read my_var
echo "system will shutoff after ${my_var}"
sleep ${my_var}
shutdown -h now

