#Requires -Version 7


$pwshlib = [System.IO.Path]::GetFullPath("$PSScriptRoot\..\src")
$psmp_current_user = [System.Environment]::GetEnvironmentVariable("PSModulePath", [EnvironmentVariableTarget]::User)
if ((-not $psmp_current_user) -or (-not $psmp_current_user.Contains($pwshlib))) {
    [Environment]::SetEnvironmentVariable('PSModulePath', "${pwshlib};" + $psmp_current, [EnvironmentVariableTarget]::User)
    Write-Host "The rdee-pwsh has been installed in system now"
}
else {
    Write-Host "Skip! The rdee-pwsh has already been installed in system"
}
