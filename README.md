Server Performance Stats
This repository contains a Bash script, server-stats.sh, that analyzes basic performance statistics on a Linux server. The script provides the following information:

Total CPU usage
Total memory usage (free vs. used, including percentage)
Total disk usage (free vs. used, including percentage)
Top 5 processes by CPU usage
Top 5 processes by memory usage

Description
The server-stats.sh script is designed to be a simple and efficient tool for quickly gathering important server performance metrics. It uses various Linux command-line utilities to collect the data and present it in a clean, easy-to-read format.
This script can be useful for system administrators, DevOps engineers, or anyone who needs to monitor the performance of a Linux server. It can be run on-demand or integrated into automated monitoring or reporting workflows.
Usage

Save the server-stats.sh script to a file on the target Linux server.
Make the script executable with the command chmod +x server-stats.sh.
Run the script with ./server-stats.sh.

The script will output the server performance statistics to the console.
