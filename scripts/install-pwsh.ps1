# Determine OS
$isLinux = $PSVersionTable.Platform -eq "Unix"

if ($isLinux) {
    # Update packages and install PowerShell Core
    /usr/bin/env bash -c "sudo apt-get update && sudo apt-get install -y powershell"
} else {
    # Install on Windows (Using a package manager like Chocolatey)
    choco install powershell-core -y
}