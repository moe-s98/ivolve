Automating Disk Space Usage Check
Objective: Schedule a script to run daily at 5:00 PM that automates checking disk space usage for the root file system and sends an email alert if usage exceeds a specified threshold (10%).

Steps:
Create the Shell Script:

File: sript1.sh

Content:

bash
#!/bin/bash
THRESHOLD=10
USAGE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')

if [ $USAGE -gt $THRESHOLD ]; then
    echo "Disk space usage is above $THRESHOLD% on root file system" | mail -s "Disk Space Alert" user@example.com
fi
Make the Script Executable:

bash
chmod +x /path/to/sript1.sh
Install mailutils (if not already installed):

bash
sudo apt-get update
sudo apt-get install mailutils
Schedule the Script to Run Daily at 5:00 PM:

Edit the crontab file:

bash
crontab -e
Add the following line to schedule the script:

bash
0 17 * * * /path/to/sript1.sh
