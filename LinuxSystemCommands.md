
# Linux System Commands for System Engineers

## **System Information Commands**
- `uname -a` - Displays system information.
- `hostname` - Displays or sets the hostname.
- `uptime` - Shows how long the system has been running.
- `who` - Displays who is logged in.
- `id` - Shows user ID and group ID information.
- `arch` - Displays the system architecture.
- `lsb_release -a` - Displays Linux Standard Base distribution information.

---

## **File and Directory Management**
- `ls` - Lists files and directories.
- `cd <directory>` - Changes the current directory.
- `pwd` - Prints the current working directory.
- `mkdir <directory>` - Creates a new directory.
- `rmdir <directory>` - Removes an empty directory.
- `rm <file>` - Removes a file.
- `cp <source> <destination>` - Copies files or directories.
- `mv <source> <destination>` - Moves or renames files or directories.

---

## **File Viewing and Editing**
- `cat <file>` - Displays the content of a file.
- `less <file>` - Allows viewing of a file one screen at a time.
- `head <file>` - Displays the first 10 lines of a file.
- `tail <file>` - Displays the last 10 lines of a file.
- `nano <file>` - Opens the file in the Nano text editor.
- `vi <file>` - Opens the file in the Vi text editor.

---

## **Process Management**
- `ps` - Displays active processes.
- `top` - Displays real-time system and process information.
- `htop` - Interactive process viewer (if installed).
- `kill <PID>` - Kills a process by its PID.
- `killall <process_name>` - Kills all processes with the specified name.
- `bg` - Resumes a job in the background.
- `fg` - Resumes a job in the foreground.

---

## **Disk Usage and Storage**
- `df -h` - Displays disk space usage in a human-readable format.
- `du -sh <directory>` - Displays the size of a directory.
- `mount` - Lists mounted filesystems or mounts a device.
- `umount <device>` - Unmounts a device.
- `lsblk` - Lists information about block devices.
- `blkid` - Displays information about block devices and their UUIDs.

---

## **Network Commands**
- `ifconfig` - Displays or configures network interfaces.
- `ip addr` - Displays IP addresses and network interfaces.
- `ping <host>` - Checks connectivity to a host.
- `netstat -tuln` - Displays network connections.
- `ss -tuln` - Displays listening ports and connections.
- `curl <URL>` - Fetches data from a URL.
- `wget <URL>` - Downloads a file from a URL.

---

## **User Management**
- `whoami` - Displays the current user.
- `adduser <username>` - Adds a new user.
- `passwd <username>` - Changes a user's password.
- `deluser <username>` - Deletes a user.
- `groups <username>` - Displays the groups a user belongs to.

---

## **Permissions and Ownership**
- `chmod <mode> <file>` - Changes file permissions.
- `chown <user>:<group> <file>` - Changes file ownership.
- `ls -l` - Displays file permissions in a detailed format.
- `umask` - Displays or sets default file permissions.

---

## **Package Management (Debian-based systems)**
- `apt update` - Updates the package list.
- `apt upgrade` - Upgrades installed packages.
- `apt install <package>` - Installs a package.
- `apt remove <package>` - Removes a package.

## **Package Management (Red Hat-based systems)**
- `dnf update` - Updates all installed packages.
- `dnf install <package>` - Installs a package.
- `dnf remove <package>` - Removes a package.

---

## **System Monitoring**
- `free -h` - Displays memory usage.
- `vmstat` - Displays system performance metrics.
- `iostat` - Displays CPU and I/O statistics.
- `sar` - Collects and reports system activity.
- `dmesg` - Displays kernel messages.

---

## **Backup and Archiving**
- `tar -cvf <archive.tar> <directory>` - Creates a tar archive.
- `tar -xvf <archive.tar>` - Extracts a tar archive.
- `rsync -av <source> <destination>` - Synchronizes files/directories.

---

## **Search and Find**
- `find <directory> -name <pattern>` - Searches for files matching a pattern.
- `grep <pattern> <file>` - Searches for a pattern in a file.
- `locate <file>` - Quickly finds a file (requires `updatedb`).
- `which <command>` - Shows the path of a command.

---

## **Shutdown and Reboot**
- `shutdown -h now` - Shuts down the system immediately.
- `reboot` - Reboots the system.
- `halt` - Halts the system.
