# Start the Data Recorder
# Mount the USB drive
mount /dev/sda1 /mnt/usb

# Go to the USB drive
#cd /mnt/usb

# Start the file server
#python3 -m http.server 8000 &

/home/pi/rti/gohttpserver-linux-arm -r /mnt/usb --addr :8000 &

# Set the python path
export PYTHONPATH=$PYTHONPATH:/home/pi/rti/python/rti-python

# Move to the directory
cd /home/pi/rti/python/rti-python

# Pull the latest code if the internet is connected
git pull origin master

# Run the data recorder
#python3 Utilities/SerialDataRecorder.py -c /dev/ttyUSB0 -b 230400 -f /mnt/usb/recorder &

