# Network Manager

## Description
This batch script provides a simple command-line interface to manage network interfaces on a Windows system. Users can view available network interfaces, enable or disable a selected interface, and exit the script.

## Features
- Display a list of network interfaces.
- Disable a specified network interface.
- Enable a specified network interface.

## Requirements
- Windows operating system.
- Administrator privileges to execute network-related commands.

## Usage
1. Run the script by double-clicking the `.bat` file or executing it in a command prompt with administrator privileges.
2. Select an option from the menu:
   - `1` to disable a network interface.
   - `2` to enable a network interface.
   - `3` to exit the script.
3. If enabling or disabling an interface, enter the exact name of the interface when prompted.

## Example Output
```
==============================
       Network Manager
==============================
Wi-Fi
Ethernet
==============================
Select an option:
1. Disable a network interface
2. Enable a network interface
3. Exit
==============================
Enter your choice (1-3):
```

## Notes
- The script uses `netsh interface show interface` to list available network interfaces.
- Ensure the interface name is entered correctly (case-sensitive) when enabling or disabling.
- The script must be executed with administrator privileges; otherwise, `netsh` commands may fail.

## Disclaimer
Use this script at your own risk. Disabling the wrong network interface may cause loss of connectivity. Always double-check the interface name before making changes.

