#!/usr/bin/expect -f
# this line is for specifying interpreter that this is expect script.
set prompt "telnet prompt"
# this line once set prompt to automatically expect this at end of every command
set username "telnet_username"
# to be more genric you can specify the username here"
set timeout -1
#this waits for as long as it takes to complete the command
spawn telnet [lindex $argv 0]
# this is to get commandline argument of telnet server ip
expect -re "(\\w+) login: "
send "$username\r"
send "dmesg\r"
interact
#interact allows you to interact with this server if ommited this script will close the telent prompt
