# Network Management

## View Network Configuration
 - **Lists network adapters.**
   ```shell
        lsdev -Cc adapter
   ```
 - **Displays all network interfaces.**
   ```shell
        ifconfig -a
   ```
## Manage Network Interfaces
 - **A menu-driven tool for managing network settings.**
   ```shell
        smitty tcpip
   ```
 - **Brings up a network adapter.**
   ```shell
        chdev -l <adapter> -a state=up
   ```
 - **Configures a new network interface.**
   ```shell
        mktcpip
   ```
