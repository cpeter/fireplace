#!/bin/sh
cd /home/pi/videolooper
python3 server.py &
sudo service nginx restart

# Some ideas taken from https://diyodemag.com/projects/part_1_google_assistant_controlled_devices
# https://www.dataplicity.com/
# https://oshlab.com/raspberry-pi-fireplace-video-looper/
