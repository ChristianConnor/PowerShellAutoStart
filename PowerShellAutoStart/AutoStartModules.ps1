#######################################################################
#  Loads All Modules from powershell Env Var PSModulePath
#######################################################################
# https://github.com/ChristianConnor/PowerShellAutoStart.git
# By Christian Connor
#######################################################################
#######################################################################

$fullPathIncFileName = $MyInvocation.MyCommand.Definition
$PSModulePaths = $env:PSModulePath -split ";"
foreach ($PSModulePath in $PSModulePaths)
{
# load all 'autoload' scripts
Get-ChildItem "${PSModulePath}*.ps1" | %{.$_} 

}
Write-Host "Custom PowerShell Environment Loaded from " $fullPathIncFileName
