PowerShell Toolkit for Server and Network Infrastructure

This toolkit includes PowerShell scripts developed to assist with server and network infrastructure monitoring, management, and maintenance in a Windows-based environment. The scripts aim to support automation, reporting, and daily system administration tasks.

Contents:

1. Check Disk Space on Servers
   Checks and reports the free and total disk space on a list of remote servers.

2. Restart a Windows Service on Remote Servers
   Allows you to specify a service name and restart it across multiple servers remotely.

3. Test Network Latency to Core Devices
   Performs ping tests on important IP addresses or hostnames to assess basic network health and response times.

4. Backup Shared Folder Contents
   Creates a backup copy of a shared folder to a destination path, appending a date/time stamp to the backup folder.

5. Generate System Info Report
   Gathers operating system version, hostname, and last boot time from each remote server listed.

Usage Notes:

* Modify server and device lists in each script to match your environment.
* Run scripts from an elevated PowerShell session with appropriate permissions.
* Remote server access may require firewall exceptions and PowerShell remoting enabled.
* Ensure destination paths for backup and export operations exist or are created as part of the script.

These scripts can be customised further to meet the needs of your infrastructure or integrated into scheduled tasks and system health checks.
