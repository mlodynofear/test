Function Get-UpdatePC(
                     [string]$CheckInstallerStatus ="Checking if Windows Update installer is ready",
                     [string]$InstallerBussy = "Installer is busy. System will not install any MS Updates!",
                     [string]$UpdatesAvailable = "Getting list of available system updates!", 
                     [string]$ModuleInstallation = "Creating 'Modules' folder, downloading module and installing PSWindowsUpdate ver: 1.5.2.2 Please wait!",
                     [string]$UpdatesToConfirm = "Above list of available updates are being processed for installation. You will be prompt if you want to have it installed or not!"
                     ) 
  {
   


   Write-Host $ModuleInstallation -ForegroundColor Yellow
   New-Item -Name Modules -Path $env:USERPROFILE\Documents\WindowsPowerShell\ -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null
   Save-Module -Name PSWindowsUpdate -RequiredVersion 1.5.2.2 -Path $env:USERPROFILE\Documents\WindowsPowerShell\Modules
   Import-Module -Name PSWindowsUpdate -Force
   Write-Host $CheckInstallerStatus -ForegroundColor Yellow
   $installer = Get-WUInstallerStatus

   IF($installer -eq "Installer is ready.")
   {

   $installer
   Write-Host $UpdatesAvailable -ForegroundColor Yellow
   Get-WUList
   Write-Host $UpdatesToConfirm -ForegroundColor Red
   Get-WUInstall -Confirm
   }
   ELSE
   {
   Write-Host $InstallerBussy -ForegroundColor Red
   }


  } #End Function UpdatePC
# SIG # Begin signature block
# MIIFcwYJKoZIhvcNAQcCoIIFZDCCBWACAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUPb53znjL9QKEYIyG9psb9INs
# iligggMMMIIDCDCCAfCgAwIBAgIQYqUiW3xYM45LHU7su0GnpzANBgkqhkiG9w0B
# AQUFADAcMRowGAYDVQQDDBFUZXN0IENvZGUgU2lnbmluZzAeFw0xODAxMDEyMDM0
# MDZaFw0yMzAxMDIyMDM0MDZaMBwxGjAYBgNVBAMMEVRlc3QgQ29kZSBTaWduaW5n
# MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApwkge9dkIVYs7ohgpwUL
# RD1uvC3FVjq5ReYUxaUMyxEN+kT3oXFrZ5uSsoCdzCsUpJeH8p6NeS6GBuVJSHoW
# bzGEuoiZ4qfsrvmnGfKyeXeT69UP0yTt4UHXddfVgMQUeFV6P2ZorPCn8tVJMMNV
# WD2nega26rPSZzjowpnYndXjmLIya96ohwX8upbMFVKxsO06liWpzPbORmIThepl
# zbBfgU1wZ0fHwGwpPaGpDWplEuzVE1CR5+YVy4mAFemLgmW4SHsU7Nfh63VRiq2D
# 8b4Mt3Vo9ZVUY0hZMisLzgXtsvHA++dPx8Gm4a/ReO2/em3bw3Y8GqWqWne9ky06
# twIDAQABo0YwRDATBgNVHSUEDDAKBggrBgEFBQcDAzAOBgNVHQ8BAf8EBAMCB4Aw
# HQYDVR0OBBYEFIWHCj3TFwAQXtvJb1jaK42Ldl3LMA0GCSqGSIb3DQEBBQUAA4IB
# AQBhG0NQPEKOuzIJeHZcgkfp18nmzLGpc30DDi/HkaX9Le1xG5jd2MM1eaAq06mW
# ldjFMMJM7XQtdXrZ1anGK/k4VPJgeSYotfOSAVzgKeJU4LmlVs+3wx9xQj7WaBDq
# DfROHCi2yTQ41R1J9JwaoRdKwfNxi23aSPHVZkEgxH5jAR+Vm86pp5zXk40V0WCY
# Hejz0nBJvhFtfloZFhu807enLkk5v7OcnciQNFZLf/oDRVW9c7YBxWVC1iJn0c78
# egqPk6NMKo7/y5A+rw9jW3VPARnV1LFDatrCxBSugEdSKWKWDvNFfA/f1AMz+oEd
# /osSPrIeG4+wZNtvJrYsoqwaMYIB0TCCAc0CAQEwMDAcMRowGAYDVQQDDBFUZXN0
# IENvZGUgU2lnbmluZwIQYqUiW3xYM45LHU7su0GnpzAJBgUrDgMCGgUAoHgwGAYK
# KwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIB
# BDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU
# 8VDIvXt+0l3kBuRkjrtDWqyO5gYwDQYJKoZIhvcNAQEBBQAEggEAWY9gBitE2i8P
# hWnaC8IMcLJvNTzCOHAuCDpSQMoQLUx4F/lZIpjsCV3GcK27qUJ3IXKvsIUO98cT
# bX6puylPUbmJWXMtaAB87orA/j2xry1qW67YPoZbX4qyir46fMbH86F5iLkkoRgr
# XqRz/BA2j9rVQJW1+FhTNHcEnFHTRmACyXb+lsTX6AF6V8RYOLe8XDdEtCJxK/yy
# 4TqJdXQjttn4cZvejaguuOuQrany3OLce24EWMPx/h7I5Z5xK6Xl8+GqTVO+VBG6
# O4ZoII4VW5YN34t9ITSaUpmBU/hdyGuuEteuZRsepEoycEueqNrwPRHQiBsLBzV0
# fIWHIqb8bw==
# SIG # End signature block
