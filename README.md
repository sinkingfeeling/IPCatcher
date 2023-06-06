# IPCatcher
a creative way of logging public IP's used when connected to a VPN

## Instructions

This script fetches your public IP address from the website "[http://whatismyip.akamai.com](http://whatismyip.akamai.com/)", trims any whitespace from the returned string, and appends it to a text file along with the current date and time. Replace `"C:\path\to\your\file.txt"` with the path where you want to save the IP address.

To set up this script to run automatically on network change, you can use the Task Scheduler in Windows:

1.  Open Task Scheduler (you can search for it in the Start menu).
2.  Click on "Create Basic Task..." in the right-hand Actions panel.
3.  Give your task a name and description, then click Next.
4.  Choose the "When a specific event is logged" option, then click Next.
5.  Choose "System" as the log, "NetworkProfile" as the source, and "10000" as the event ID. This event ID corresponds to a network change. Then click Next.
6.  Choose "Start a program" on the Action step, then click Next.
7.  For the "Program/script" field, enter "powershell.exe". In the "Add arguments" field, enter `-ExecutionPolicy Bypass -File "C:\path\to\your\script.ps1"`, replacing the path with the location of your PowerShell script. Then click Next.
8.  Review your settings and click Finish.

With this setup, the PowerShell script should run and log your public IP address to the specified file whenever your network changes.

