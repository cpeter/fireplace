#echo 'on 0.0.0.0' | cec-client -s -d 1
echo 'standby 0.0.0.0' | cec-client -s -d 1
sleep 3
killall -9 omxplayer