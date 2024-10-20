# Heart Rate Monitoring System

## Project Overview

»  **Heart Rate Monitoring Script**     `heart_rate_monitor.sh`  
»  **Log Archival Script**    `archive_log.sh`  
»  **Archival and Backup Script**    `backup_archives.sh`  

These scripts are part of the hospital’s system upgrade to improve patient monitoring and data management.

---
### Task 1: Heart Rate Monitoring
- To record the heart rate from a device into a logfile, execute this script: `./heart_rate_monitor.sh`
- Enter a recording device name when you get this prompt: _"Enter device name (e.g., "Monitor_A", "Monitor_B"):"_
- **Background Process:**
  - The script will start executing in a separate process in the background, and the Process ID (PID) will be displayed, which you can use to manage the execution of this script.
To check the log output, use: `tail -f heart_rate_log.txt`
### Task 2: Log Archival
This script archives the heart rate log file by renaming it with a timestamp.
- To archive the log file, run archive_log script » `./archive_log.sh`
   - The original `heart_rate_log.txt` will be renamed to `heart_rate_log.txt_YYYYMMDD_HHMMSS` with the timestamp of when the script was executed and time zone Matching kigali, Rwanda time zone.
### Task 3: Archival and Remote Backup
This script moves the archived log files to a designated directory and backs them up to a remote server using SSH.
- **Set Up SSH Access:**
  - In this script `backup_archives.sh`, replace the SSH credentials (host and username) with your own remote server credentials.
- Run the script » `./backup_archives.sh` and provide the password to your remote server when prompted.

- **Check and Confirm Backup**:
  - Archived files will be moved to the `archived_logs_group19` and then securely copied to the home directory `/home/` of your remote server using `scp`. You can check the home directory of your remote server to confirm that the directory `archived_logs_group19` and its contents are there.

---
## Group Session Attendance Report

We met several times for the development of this project. Below is a summary of attendance for our sessions ⤵️

| **Session**                                    | **Date (2024)**      | **Present**                                               | **Absent** |
|------------------------------------------------|---------------|-----------------------------------------------------------|------------|
| 1 ⮞ Task Overview                | 08-Oct    | Chibueze, Emmanuel, Shash, Delucie, Moses, Monica        | None       |
| 2 ⮞ Task 1 Implementation              | 10-Oct    | Sash, Moses,        | None       |
| 3 ⮞ Task 2 Implementation              | 12-Oct    |  Chibueze, Delucie,        | None       |
| 4 ⮞ Task 3 Implementation              | 14-Oct    |  Emmanuel, Monica        | None       |
| 4 ⮞ Project finalization                  | 16-Oct    |  Chibueze, Emmanuel, Shash, Delucie, Moses, Monica        | None       |
| 5 ⮞ README Documentation                      | 20-Oct    |  Chibueze, Emmanuel, Shash, Delucie, Moses, Monica       | None       |

## Contact Information
For any questions or more clarity, please contact these awsome contributors ⤵️
- Chibueze Victor Ifegwu » [Email](C.ifegwu@alustudent.com) | [Github User name](C-ifegwu)
- Chiagbanweghi Moses Peter » [Email](C.peter@alustudent.com) | [Github User Name](Chiagbanweghi101)
- Emmanuel Chibuikem Ngwoke » [Email](E.ngwoke@alustudent.com) | [Github User Name](Emmacode001)
- Golden Sash Munyankindi » [Email](s.munyankin@alustudent.com) | [Github User Name](goldensash1)
- Rurangwa Delucie » [Email](d.rurangwa@alustudent.com) | [Github User Name](Delucie_coder)
- Monica Akoi Dau Ahol » [Email](M.ahol@alustudent.com) | [Github User name](Monica486-bot)
---
