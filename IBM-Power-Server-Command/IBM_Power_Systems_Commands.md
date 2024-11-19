
# IBM Power Systems Commands for System Engineers

## **System Management Commands**
### View System Information
- `lsconf` - Lists system configuration.
- `prtconf` - Displays configuration of the system.
- `uname -a` - Displays OS and system information.

### System Status
- `lscfg` - Lists system hardware.
- `lsdev` - Lists device status.
- `lsps -a` - Displays paging space usage.
- `topas` - System performance monitoring.

### Firmware Management
- `lsfw` - Lists firmware levels.
- `update_flash` - Updates system firmware.

---

## **Partition Management (HMC or IVM)**

### View LPARs (Logical Partitions)
- `lssyscfg -r lpar` - Displays configuration of all LPARs.
- `lsnimm -l` - Lists all managed systems and LPARs.

### Manage LPARs
- `chsyscfg` - Changes LPAR configurations.
- `mksyscfg` - Creates a new LPAR.
- `rmsyscfg` - Deletes an LPAR.

### Power Management
- `chsysstate -r lpar -o on -n <lpar_name>` - Power on an LPAR.
- `chsysstate -r lpar -o off -n <lpar_name>` - Power off an LPAR.
- `chsysstate -r sys -o off -m <managed_system>` - Powers off the managed system.

---

## **Storage Management**

### View Disks and Storage
- `lsvg` - Lists all volume groups.
- `lslv` - Lists all logical volumes.
- `lspv` - Lists all physical volumes.

### Manage Volume Groups
- `mkvg` - Creates a volume group.
- `extendvg` - Adds physical volumes to a volume group.
- `reducevg` - Removes physical volumes from a volume group.

### Filesystem Management
- `lsfs` - Lists filesystems.
- `mount` - Mounts a filesystem.
- `umount` - Unmounts a filesystem.

---

## **Network Management**

### View Network Configuration
- `lsdev -Cc adapter` - Lists network adapters.
- `ifconfig -a` - Displays all network interfaces.

### Manage Network Interfaces
- `smitty tcpip` - A menu-driven tool for managing network settings.
- `chdev -l <adapter> -a state=up` - Brings up a network adapter.
- `mktcpip` - Configures a new network interface.

---

## **Backup and Recovery**

### System Backup
- `mksysb` - Creates a system backup.
- `savevg` - Saves volume group data.
- `tar` - Archives files.

### Restore
- `restvg` - Restores a volume group.
- `restore` - Restores files from backups.

---

## **Diagnostics and Troubleshooting**

### Run Diagnostics
- `diag` - Launches the diagnostics menu.
- `errpt` - Displays system error reports.
- `alog -o -t boot` - Displays boot log.

### Troubleshoot Devices
- `cfgmgr` - Configures detected devices.
- `lsattr -El <device>` - Lists attributes of a device.
- `rmdev -l <device> -d` - Removes a device.

---

## **Virtual I/O Server (VIOS) Commands**

### Manage Virtual Devices
- `lsmap -all` - Lists mappings of virtual adapters.
- `mkvdev` - Creates virtual devices.
- `rmvdev` - Removes virtual devices.

### Check VIOS Resources
- `lsdev -type adapter` - Lists adapters on VIOS.
- `lsnim -l` - Displays NIM clients and resources.

---

## **Performance Monitoring**

### Real-Time Monitoring
- `nmon` - Interactive performance monitoring tool.
- `vmstat` - Displays system performance metrics.

### System Load
- `sar` - Collects and reports system activity.
- `iostat` - Displays CPU and disk I/O usage.
- `netstat` - Displays network statistics.

---

## **HMC (Hardware Management Console) Specific Commands**

### User Management
- `lssyscfg -r user` - Lists HMC users.
- `chhmcusr` - Changes user attributes on HMC.

### Event Logs
- `lssvcevents` - Lists service events.
- `lshmc -V` - Displays HMC version.

### HMC Network Configuration
- `chhmc -c network` - Changes HMC network settings.
