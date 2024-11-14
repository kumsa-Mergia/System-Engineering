# To run your PowerShell script (get-help.ps1), follow these steps:

## 1. Open PowerShell

Make sure you're in a PowerShell terminal or an integrated terminal within your IDE (e.g., Visual Studio Code or Git Bash with PowerShell support).

## 2. Change Execution Policy (if necessary)

By default, PowerShell restricts running scripts for security reasons. You might need to change the execution policy to allow script execution.

Run this command to allow local script execution:

~~~
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
~~~

This command allows running scripts that are locally created but will still require remote scripts to be signed by a trusted publisher.

## 3. Navigate to the Script's Directory

If you're not already in the directory where get-help.ps1 is located, navigate there using the cd command:

~~~
cd C:\path\to\your\script\directory
~~~

## 4. Run the Script

Once you're in the correct directory, execute the script using:

~~~
.\get-help.ps1
~~~

This will run the script, and you should see the help documentation for Get-Process in the terminal.


