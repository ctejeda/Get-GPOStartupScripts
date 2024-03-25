# Get-GPOStartupScripts PowerShell Function

`Get-GPOStartupScripts` is a PowerShell function designed to retrieve all startup scripts defined in Group Policy Objects (GPOs) within a specified Active Directory domain. It searches through the SYSVOL folder on the domain controller to find and list all scripts set to run at system startup via GPO.

## Features

- Retrieves all startup scripts configured in GPOs for a given domain.
- Handles domains with multiple GPOs seamlessly.
- Provides output in an easily readable format.
- Gracefully handles errors and cases where no startup scripts are found.

## Prerequisites

To use this function, you must have:

- PowerShell 5.1 or later.
- Read access to the SYSVOL directory on your domain controller.
- Appropriate permissions to execute scripts on your machine.

## Installation

To use the `Get-GPOStartupScripts` function, follow these steps:

1. Open PowerShell with administrative privileges.
2. Copy the function code into your PowerShell session or a `.ps1` script file.
3. Execute the function or script file to load the function into your session.

## Usage

Once the function is loaded into your PowerShell session, you can use it by specifying the domain you wish to query. Here is an example command:

```powershell
Get-GPOStartupScripts -Domain "yourdomain.com"
