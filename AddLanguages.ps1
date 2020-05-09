$LanguageList = Get-WinUserLanguageList

# Add Spanish and Greek
$LanguageList.Add("es-MX")
$LanguageList.Add("el")

# $LanguageList.Remove($LanguageList[1])

Set-WinUserLanguageList $LanguageList

# choco install -y google-translate-chrome