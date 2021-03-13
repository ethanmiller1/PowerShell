# Windows Features
choco WindowsFeatures -y IIS-WebServerRole
choco WindowsFeatures -y IIS-ISAPIFilter
choco WindowsFeatures -y IIS-ISAPIExtensions
choco WindowsFeatures -y IIS-NetFxExtensibility
choco WindowsFeatures -y IIS-ASPNET45
choco WindowsFeatures -y TelnetClient
choco WindowsFeatures -y WCF-Services45
choco WindowsFeatures -y WCF-TCP-PortSharing45
choco windowsfeatures -y IIS-WebServerManagementTools
# Hyper-V is not available on Windows 10 Home
choco windowsfeatures -y Microsoft-Hyper-V-All 
# dism.exe /Online /Enable-Feature:Microsoft-Hyper-V /All