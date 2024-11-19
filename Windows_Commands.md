# Windows System Commands

This document provides a list of common Windows system commands that can be used for troubleshooting, managing, and configuring Windows operating systems.

---

## **1. System Information Commands**

- **`systeminfo`**  
  Displays detailed configuration information about the computer and its operating system, including installed memory, network adapter information, etc.

- **`msinfo32`**  
  Opens the System Information utility that shows detailed hardware, system, and software configuration.

- **`wmic cpu get`**  
  Displays information about the CPU, such as its architecture and performance.

- **`winver`**  
  Displays the current version and build of Windows.

---

## **2. Disk Management Commands**

- **`chkdsk`**  
  Checks the file system and disk for errors, and optionally repairs them.

- **`diskpart`**  
  A disk partitioning tool used to manage disks, partitions, and volumes.

- **`fsutil`**  
  Performs tasks that are related to file systems or dismounting volumes (requires administrative privileges).

- **`defrag`**  
  Defragments a specified disk to improve performance.

---

## **3. Network and Internet Commands**

- **`ipconfig`**  
  Displays the current network configuration, including IP addresses, subnet mask, and gateway.

- **`ping`**  
  Tests network connectivity to a specific IP address or domain.

- **`tracert`**  
  Traces the path taken by packets across a network to a specified IP address.

- **`nslookup`**  
  Queries DNS servers to retrieve domain name or IP address information.

- **`netstat`**  
  Displays active network connections, routing tables, and network statistics.

- **`netsh`**  
  A command-line scripting utility for network configuration and diagnostics.

---

## **4. File and Folder Management**

- **`dir`**  
  Lists the contents of a directory.

- **`copy`**  
  Copies files from one location to another.

- **`xcopy`**  
  Copies files and directories, including subdirectories.

- **`robocopy`**  
  A robust file copy utility that can copy large amounts of data efficiently.

- **`del`**  
  Deletes files from the file system.

- **`rd`**  
  Removes empty directories.

- **`mkdir`**  
  Creates a new directory.

- **`rename`**  
  Renames files or directories.

- **`move`**  
  Moves files from one location to another.

---

## **5. User and Group Management**

- **`net user`**  
  Displays or modifies user account information.

- **`net localgroup`**  
  Displays or modifies local group membership.

- **`net accounts`**  
  Configures password and login settings.

- **`control userpasswords2`**  
  Opens the User Accounts window to manage user accounts, passwords, and automatic login.

---

## **6. System Services and Processes**

- **`tasklist`**  
  Displays a list of all running processes on the system.

- **`taskkill`**  
  Ends a specified process.

- **`sc`**  
  Controls services, including starting, stopping, or configuring them.

- **`services.msc`**  
  Opens the Services window where you can manage system services.

---

## **7. Security and Permissions**

- **`secpol.msc`**  
  Opens the Local Security Policy editor to configure security settings.

- **`gpedit.msc`**  
  Opens the Local Group Policy Editor for managing system-wide settings.

- **`net start`**  
  Starts a specific service.

- **`net stop`**  
  Stops a specific service.

---

## **8. System Configuration and Management**

- **`msconfig`**  
  Opens the System Configuration tool to enable or disable startup programs and services.

- **`regedit`**  
  Opens the Windows Registry Editor, where you can configure system settings.

- **`eventvwr.msc`**  
  Opens the Event Viewer to view system logs and event records.

- **`cmd`**  
  Opens the Command Prompt, the main shell for running text-based commands.

- **`powershell`**  
  Opens PowerShell, a more advanced shell for automating tasks and configuration.

- **`taskmgr`**  
  Opens the Task Manager, which displays running processes and system performance.

---

## **9. System Shutdown and Restart**

- **`shutdown`**  
  Shuts down or restarts the computer.  
  Example: `shutdown /s /f /t 0` - Immediately shuts down the computer.

- **`restart`**  
  Restarts the computer.

- **`logoff`**  
  Logs off the current user.

---

## **10. File and System Backup**

- **`backup`**  
  Opens the Backup and Restore utility to create or restore backups.

- **`wbadmin`**  
  A command-line tool for backup and recovery operations.

---

## **11. Miscellaneous Commands**

- **`control`**  
  Opens the Control Panel.

- **`explorer`**  
  Opens the Windows File Explorer.

- **`notepad`**  
  Opens the Notepad text editor.

- **`calc`**  
  Opens the Calculator app.

- **`charmap`**  
  Opens the Character Map tool to insert special characters.

---

## **12. System Restore and Recovery**

- **`rstrui`**  
  Opens the System Restore utility to revert the system to a previous state.

- **`recoverydrive`**  
  Launches the "Create a recovery drive" wizard to make a system recovery USB drive.

- **`bootrec`**  
  A recovery tool used to repair boot issues, such as fixing the Master Boot Record (MBR).

---

## **13. Disk Space and Performance Analysis**

- **`perfmon`**  
  Opens the Performance Monitor to analyze system performance.

- **`resmon`**  
  Opens the Resource Monitor to view detailed resource usage (CPU, memory, disk, network).

- **`tasklist /v`**  
  Displays detailed information about running processes, including memory usage.

- **`diskcleanup`**  
  Opens the Disk Cleanup tool to free up space on the hard drive by deleting temporary files and system files.

---

## Conclusion

These are just a few of the many available system commands in Windows. They can be used to manage, troubleshoot, and optimize your system. Always be cautious while using advanced commands, especially when modifying system settings or files.
