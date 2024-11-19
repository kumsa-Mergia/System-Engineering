# Partition Management (HMC or IVM)

  ## View LPARs (Logical Partitions)
  - **Displays configuration of all LPARs.**
    ```shell
        lssyscfg -r lpar
  - **Lists all managed systems and LPARs.**
    ```shell
            lsnimm -l 
    ``` 
  ## Manage LPARs
  - **Changes LPAR configurations.**
    ```shell
    chsyscfg
    ``` 
  - **Creates a new LPAR.**
    ```shell
    mksyscfg
    ``` 
  - **Deletes an LPAR.**
    ```shell
        rmsyscfg 
    ``` 
  ## Power Management
  - **Power on an LPAR.**
    ```shell
        chsysstate -r lpar -o on -n <lpar_name>
    ``` 
  - **Power off an LPAR.**
     ```shell
    chsysstate -r lpar -o off -n <lpar_name>
    ``` 
  - **Powers off the managed system.** 
    ```shell
    chsysstate -r sys -o off -m <managed_system>
    ``` 
