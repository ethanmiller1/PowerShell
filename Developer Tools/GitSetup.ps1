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
# git config --global -list

# Configure default mergetool
git config --global mergetool.bc3.cmd "`'C:/Program Files (x86)/Beyond Compare 3/BComp.com`' \`"`$PWD/`$LOCAL\`" \`"`$PWD/`$REMOTE\`" \`"`$PWD/`$BASE\`" \`"`$PWD/`$MERGED\`""
git config --global mergetool.bc3.keepBackup false
git config --global mergetool.bc3.trustExitCode false

# Now back to Chocolatey
choco install -y TimRayburn.GitAliases
choco install -y beyondcompare
choco install -y Git-TF