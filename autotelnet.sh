#!/usr/bin/expect -f
#spawn telnet `fip`
#set fip [exec $(echo `fip`) ]
set timeout -1
spawn telnet [lindex $argv 0]
#spawn telnet $fip
#expect -re "(\\c+) login:"
expect -re "(\\w+) login: "
send "Administrator\r"
expect "{Administrator}=>"
interact
