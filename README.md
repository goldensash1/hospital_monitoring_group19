<<<<<<< HEAD
#Overview
This script, backup_archives.sh, automates the process of archiving heart rate log files and securely backing them up to a remote server via SSH. It organizes archived logs into a specified directory and transfers them to the remote server using scp.

#Script Details
Host Info: 2d294d8d9a24.601a9382.alu-cod.online
User Info: 2d294d8d9a24
Archive Directory: archived_logs_group19
#Usage
Make the script executable
chmod +x backup_archives.sh
#Run the script:
./backup_archives.sh
#The script will:
Check if the archive directory exists, creating it if necessary.
Move archived log files (heart_rate_log.txt_*) into the directory.
Securely backup the archived logs to the remote server.
#Output Messages
#Success: yoh Emma you did it
#No files to archive: Emma you are awesome all is backed up!
#Errors: sorry bro go fix your script
#Remote Backup
The script uses scp to back up the directory archived_logs_group19 to the remote server at /home/. Ensure your SSH connection is set up and the details (host, user) are correct.

#Contact
For questions or contributions, contact [Emmanuel/monica] at [chibuikeemmanuel879@gmail.com].


=======
this is a readme
>>>>>>> added a new branch
