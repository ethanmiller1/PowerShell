# Ethan Miller's PowerShell Utilities

This repository includes my various scripts and modules for PowerShell.

## Basic Setup
Open PowerShell as Administrator, navigate to scripts folder, then:
``` powershell
# Clone PowerShell scripts
$ cd $env:USERPROFILE; mkdir Repos; cd Repos; mkdir PowerShell; cd PowerShell
$ git clone https://github.com/ethanmiller1/PowerShell.git
# Run basic setup scripts
$ .\BasicSetup.ps1
```

Note: You may encounter errors when running scripts from your work network. Run scripts at home.

## Manual Install of Chocoletey
https://chocolatey.org/install

## Execution Policy on Work Machines

To run `.ps1` scripts, select `File` > `Open Windows PowerShell` > `Open Windows PowerShell as administrator`

If you encounter the following error while running scripts:

``` warn
.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.
```

Simply run this in your PowerShell to add it as a function:
``` powershell
# Sets Execution Policy to unrestricted before executing the command passed.
function Execute([string] $cmd)
{
    powershell `
        -NoProfile `
        -ExecutionPolicy unrestricted `
        -Command $cmd
}
```

And then:

``` powershell
Execute ".\BasicSetup.ps1"
```