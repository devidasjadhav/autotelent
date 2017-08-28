#!/usr/bin/expect -f
set timeout -1
spawn telnet [lindex $argv 0]
expect -re "(\\w+) login: "
send "USERNAME\r"
expect "Telnet Prompt"
interact
