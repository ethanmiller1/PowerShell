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

# IDE tools
choco install -y intellijidea-community
choco install -y intellijidea-ultimate
choco install -y vscode
choco install -y vscode-prettier
choco install -y vscode-vsliveshare
choco install -y vscode-gitlens
choco install -y vscode-yaml
choco install -y vscode-chrome-debug
choco install -y vscode-codespellchecker
choco install -y vscode-powershell

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
choco install -y k9s
choco install -y kustomize
choco install -y docker-desktop
choco install -y docker-cli
choco install -y rdmfree

# Windows Features
choco install -y rsat
