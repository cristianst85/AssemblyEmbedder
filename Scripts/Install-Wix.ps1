################################################################################
##  File:  Install-Wix.ps1
##  Team:  Automated Testing
##  Desc:  Install Latest Wix
################################################################################

echo $PSScriptRoot

Import-Module -Name $PSScriptRoot\ImageHelpers -Verbose

$temp_install_dir = 'C:\Windows\Installer'
New-Item -Path $temp_install_dir -ItemType Directory -Force

Install-EXE -Url "https://wixtoolset.org/downloads/v3.14.0.3910/wix314.exe" -Name "wix314.exe" -ArgumentList "/quiet"