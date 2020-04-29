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

# Create subdirectories
cd Repos
Mk-Dir Java
Mk-Dir Python
Mk-Dir NodeJS
Mk-Dir MotionScript
Mk-Dir VisualBasic
Mk-Dir WordPress
Mk-Dir GroovyScript
Mk-Dir PerformanceTesting
Mk-Dir C++
Mk-Dir AndroidStudioProjects

cd NodeJS
git clone https://github.com/ethanmiller1/ethanmiller1.github.io.git
git clone https://github.com/ethanmiller1/Node.js-and-Express-App

cd ../MotionScript
git clone https://github.com/ethanmiller1/After-Effects-Expressions.git

cd ../VisualBasic
git clone https://github.com/ethanmiller1/Find-Ideal-Job-Location.git
git clone https://github.com/ethanmiller1/Trading-Journal

cd ../Python
git clone https://github.com/ethanmiller1/Get-Movie-Title.git
git clone https://github.com/ethanmiller1/Batch-File-Rename-Helper.git
git clone https://github.com/ethanmiller1/Northwind-Traders.git