#start playing the video
killall -9 omxplayer
omxplayer --loop -o hdmi /home/pi/videolooper/video/fireplace.mp4&
echo 'on 0.0.0.0' | cec-client -s -d 1
#echo 'standby 0.0.0.0' | cec-client -s -d 1