Ping Subnet Script
Objective: Create a shell script to ping every server in the 172.16.17.x subnet (where x is a number between 0 and 255). If the ping succeeds, display the message "Server 172.16.17.x is up and running." If the ping fails, display the message "Server 172.16.17.x is unreachable."

Steps:
Create the Shell Script:

File: ping_subnet.sh

Content:

bash
#!/bin/bash
for i in {0..255}
do
    ping -c 1 172.16.17.$i > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Server 172.16.17.$i is up and running."
    else
        echo "Server 172.16.17.$i is unreachable."
    fi
done
Make the Script Executable:

bash
chmod +x /path/to/ping_subnet.sh
Run the Script:

Execute the script to check the status of all servers in the specified subnet.

bash
./ping_subnet.sh

