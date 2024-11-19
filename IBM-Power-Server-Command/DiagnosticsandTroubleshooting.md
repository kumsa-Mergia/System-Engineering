# Diagnostics and Troubleshooting

  ## Run Diagnostics
 - **Launches the diagnostics menu.**
   ```shell 
        diag
    ```
  - **Displays system error reports.**
    ```shell
        errpt
    ```
  - **Displays boot log.**
    ```shell
        alog -o -t boot
    ```
  ## Troubleshoot Devices
 - **Configures detected devices.**
    ```shell 
        cfgmgr
    ```
 - **Lists attributes of a device.**
    ````shell 
        lsattr -El <device>
      ```
 - **Removes a device.**
    ```shell 
        rmdev -l <device> -d
    ```
