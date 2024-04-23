#Requires -Version 7


$pwshlib = [System.IO.Path]::GetFullPath("$PSScriptRoot\..\powershell")
$psmp_current_user = [System.Environment]::GetEnvironmentVariable("PSModulePath", [EnvironmentVariableTarget]::User)
if (-not $psmp_current_user.Contains($pwshlib)) {
    [Environment]::SetEnvironmentVariable('PSModulePath', "${pwshlib};" + $psmp_current, [EnvironmentVariableTarget]::User)
}
else {
    Write-Host "The rdee-pwsh has already been installed in system"
}