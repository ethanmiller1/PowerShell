# Setup GIT with my info
git config --global --unset user.name
git config --global user.name "Hot Mama"
$email = Read-Host "Please enter your git user.email"
git config --global --unset user.email
git config --global user.email $email