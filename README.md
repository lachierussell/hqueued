# hqueued

hqueued is a system daemon designed to monitor HQueue (by Houdini) pipelines. The daemon will poll the HQueue server (default every hour) and alert via email all recipients if jobs have not been completed. The daemon will also attempt to cancel any hung jobs, and also send alerts as to the success of this. Twice daily a report is sent with regular messages featuring the number of jobs completed in the last 12 hours. 

# Installation.

Before running install.sh we need to change the config files. 
> hqueued.conf
contains most user information. Replace any text in MY_ALL_CAPS.

Running the install.sh script 'should' install the daemon correctly. However it has only been tested on one machine. This does require admin privileges to run. Once the script has run the usual service tools can be used to start/stop the daemon.

> sudo systemctl start hqueued.service
> sudo systemctl status hqueued.service

*Note* There are a few status messages regarding key modules. This feature is not yet implemented but allows the user to store email credentials securely using another extenral package. 

# Use

The daemon should take care of itself now. Although while it is still being tested keep an eye on it. The daemon wont make any attempt to reschedule jobs if they have failed, and if jobs are taking over 1 hour the config file will need to be adjusted. Note that the time is in seconds. 
