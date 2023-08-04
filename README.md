# Computer Ping Tool

This PowerShell script checks the availability of a list of computers by attempting to ping each computer. The script reads a list of computer names and their IP addresses from a text file and then tests the connection to each IP address. If the ping is successful, the script displays a message indicating that the computer is up. If the ping is unsuccessful, the script displays a message indicating that the computer is down.

Inputs:
The script requires the following inputs:

A text file containing a list of computer names, with one name per line. Located in temp folder. To edit the computer name list right click the computerlist.txt and click edit.

Outputs:
The script displays a message for each computer indicating whether the ping was successful or not. The console output shows the progress of the script as it runs.

Usage:
Modify the script to specify the correct path for the input file.
Open a PowerShell prompt and navigate to the folder containing the script.
Run the script by entering its filename.
Example:
Suppose the script file is named "CheckComputerAvailability.ps1" and the list of computers with their system names is located at "C:\temp\computerlist.txt". To run the script, right cklick the script and click run with Powershell.

The script will read the list of computer names and IP addresses from the "computerlist.txt" file, test the connection to each IP address, and display a message for each computer indicating whether the ping was successful or not. The console output will show the progress of the script as it runs. After the script has finished running, it will prompt the user to press Enter to exit the script.
