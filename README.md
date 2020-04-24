# Ethan Miller's PowerShell Utilities

This repository includes my various scripts and modules for PowerShell.

## Basic Setup
Open PowerShell as Administrator, navigate to scripts folder, then:
``` cmd
# Clone PowerShell scripts
$ cd $env:USERPROFILE; mkdir Repos; cd Repos; mkdir PowerShell; cd PowerShell
$ git clone https://github.com/ethanmiller1/PowerShell.git
# Install Chocolatey Windows Package Manager
$ .\InstallChocolatey.ps1
# Install and configure git
$ .\GitSetup.ps1
# Clone and organize git repositories
$ .\ReposSetup.ps1
# Install software
$ .\SoftwareSetup.ps1
```

Note: You may encounter errors when running scripts from your work network. Run scripts at home.

## Manual Install of Chocoletey
https://chocolatey.org/install