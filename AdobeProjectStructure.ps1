function Mk-Dir {
  param(
    [Parameter(Mandatory)]
    [string]$dir
  )
  
  If(!(test-path $dir))
  {
    mkdir $dir
  }
}

$path = Read-Host 'What is your project location?'
$templates = "A:\Users\Ethan Miller\Graphic Design\After Effects Templates & Tools"

Set-Location $path
Mk-Dir Elements
Mk-Dir Projects

Set-Location Projects
Mk-Dir "After Effects"
Mk-Dir Premiere
Mk-Dir Photoshop
Mk-Dir "FL Studio"

Set-Location ../Elements
Mk-Dir Audio
Mk-Dir Graphics
Mk-Dir Footage

Set-Location Audio
Mk-Dir Music
Mk-Dir Vocals
Mk-Dir VO
Mk-Dir "Sound Effects"

Set-Location ../Footage
Mk-Dir "RAW Footage"
Mk-Dir "Effects Footage"

Set-Location ../Graphics
Mk-Dir Vectors
Mk-Dir Images
Mk-Dir Logos
Copy-Item "$templates\Logos & Intros\Amplify Logo v1.2.aep" -Destination "$path\Elements\Graphics\Logos"