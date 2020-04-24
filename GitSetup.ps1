# Chocolatey Packages
choco install -y poshgit

# Setup GIT with my info
git config --global user.name 'Ethan Miller'
git config --global user.email 'ethan.romans5.8@gmail.com'

# Configure default mergetool
git config --global mergetool.bc3.cmd "`'C:/Program Files (x86)/Beyond Compare 3/BComp.com`' \`"`$PWD/`$LOCAL\`" \`"`$PWD/`$REMOTE\`" \`"`$PWD/`$BASE\`" \`"`$PWD/`$MERGED\`""
git config --global mergetool.bc3.keepBackup false
git config --global mergetool.bc3.trustExitCode false

# Now back to Chocolatey
choco install -y TimRayburn.GitAliases
choco install -y beyondcompare
choco install -y Git-TF