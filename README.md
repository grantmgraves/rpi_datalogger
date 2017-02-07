# rpi_datalogger
Script files to start a datalogger.

Copy the service and timer files on a Raspberry Pi to /lib/systemd/system  
Copy the httpserver to /home/pi/rti  
Clone the code from rti_python to /home/pi/rti  
Insert a USB memory stick in the USB port.  Make sure it mounts to /mnt/usb on bootup   

Send the commands:
```javascript
sudo systemctl daemon-reload
sudo systemctl enable rti_downloadserver.service
sudo systemclt enable rti_datalogger.timer
```

This will start the download server and datalogger.   
The datalogger will start 30 seconds after bootup.  This is to make sure the RS-485 adapter is initialized.

The datalogger software is python code found in rti_python
```javascript
Utilities\SerialDataRecorder.py
```

TODO:
A script file to do all this installation
