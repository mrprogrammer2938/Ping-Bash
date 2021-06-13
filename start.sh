#!/usr/bin/bash
# This code write by Mr.nope
ext () {
clear
echo ""
echo "Exiting..."
echo ""
exit 1
}
try_again () {
echo "Do you want to try again? [y/n] "
read try1;
if [[ $try1 == 'y' ]]; then
  run
elif [[ $try1 == 'n' ]]; then
    ext
else
    try_again
fi
}
run () {
printf '\033]2;Ping Test\a' 
clear
echo "Enter Ip: "
read web;
sleep 1
echo "Enter Packet: "
read packet;
sleep 1
ping -w $packet $web
try_again
}
run