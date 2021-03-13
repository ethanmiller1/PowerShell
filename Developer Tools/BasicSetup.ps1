function Execute([string] $cmd)
{
    powershell `
        -NoProfile `
        -ExecutionPolicy unrestricted `
        -Command $cmd
}

# Install Chocolatey
Execute "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))"
sc Env:\Path "$(gc Env:\Path);$(gc Env:\SystemDrive)\chocolatey\bin"

# Version Control Chocolatey Packages
choco install -y git
choco install -y tortoisegit
choco install -y poshgit

# Setup GIT with my info
$name = Read-Host "Please enter your git user.name"
git config --global --unset user.name
git config --global user.name $name
$email = Read-Host "Please enter your git user.email"
git config --global --unset user.email
git config --global user.email $email

# Configure default mergetool
git config --global mergetool.bc3.cmd "`'C:/Program Files (x86)/Beyond Compare 3/BComp.com`' \`"`$PWD/`$LOCAL\`" \`"`$PWD/`$REMOTE\`" \`"`$PWD/`$BASE\`" \`"`$PWD/`$MERGED\`""
git config --global mergetool.bc3.keepBackup false
git config --global mergetool.bc3.trustExitCode false

# Now back to Chocolatey
choco install -y TimRayburn.GitAliases
choco install -y beyondcompare
choco install -y Git-TF

cd $env:USERPROFILE

# Create Repos folder in User directory
$repos = "$env:USERPROFILE\Repos"
If(!(test-path $repos))
{
  New-Item -ItemType Directory -Force -Path $repos
}

# Make directory if it doesn't exist
function Mk-Dir {
  param(
    [Parameter(Mandatory)]
    [string]$dir
  )

  $path = "$repos\$dir"
  If(!(test-path $path))
  {
    New-Item -ItemType Directory -Force -Path $path
  }
}

# IDE tools
choco install intellijidea-ultimate
choco install intellijidea-community
choco install -y vscode
choco install vscode-prettier
choco install vscode-vsliveshare
choco install vscode-gitlens
choco install vscode-yaml
choco install vscode-chrome-debug
choco install vscode-codespellchecker
choco install vscode-powershell

# QA and Load Testing Tools
choco install -y postman
choco install -y soapui
choco install -y fiddler
choco install -y jmeter

# Productivity Tools
choco install -y 7zip
choco install -y evernote
choco install -y office365proplus

# Java
choco install -y jdk11
choco install -y jdk8

# Java libraries
choco install -y maven
choco install -y gradle
choco install -y ant
choco install -y ivy

# Cluster Management
choco install -y kubernetes-cli
choco install -y kustomize
choco install -y docker-desktop
choco install -y docker-cli

# Logging and Monitoring
choco install -y elasticsearch
choco install -y kibana