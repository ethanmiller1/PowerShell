# Add command scripts to User PATH variable TODO: get scriptPath from CommandSetup.ps1 path
$scriptsPath = "A:\Users\Ethan\Repos\PowerShell\PowerShell\Custom Commands\"
$env:INCLUDE = [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::User) + ";$scriptsPath"

[Environment]::SetEnvironmentVariable("Path", $env:INCLUDE, "User")

# Add command scripts to System PATH variable
# [Environment]::SetEnvironmentVariable("Path", $env:Path + ";$scriptsPath", "Machine")

# Check if alias has been registered with PowerShell
# get-alias new-ap

# Add alias to PowerShell Profile
Add-Content $profile "new-alias new-ap AdobeProjectStructure.ps1"

# View PowerShell Profile in notepad
# notepad $profile