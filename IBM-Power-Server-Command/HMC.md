# HMC (Hardware Management Console) Specific Commands

  ## User Management
   - **Lists HMC users.**
     ```shell
        lssyscfg -r user
     ```
   - **Changes user attributes on HMC.**
     ```
        chhmcusr
     ```
  ## Event Logs
   - **Lists service events.**
     ```shell
        lssvcevents
     ```
   - **Displays HMC version.**
     ```shell
        lshmc -V
     ```
  ## HMC Network Configuration
   - **Changes HMC network settings.**
     ```shell
        chhmc -c network
     ```
