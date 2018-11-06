#!/bin/bash
expect << EOF
spawn ssh 192.168.4.16
expect "password"  { send "123\n"}
expect "#"         { send "touch /a.txt\n"}
expect "#"         { send "exit\n"}
EOF
echo
