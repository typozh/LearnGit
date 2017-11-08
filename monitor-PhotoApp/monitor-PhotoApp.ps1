Clear-Host
$WarningPreference = "Continue"
$InformationPreference = "Continue"
$PhotoAppProcessName = "Microsoft.Photos"
$WaitSeconds = 10
$StartPhotoAppCommand = "start ms-photos:"
do {
    $PhotoAppProcess = get-process -Name $PhotoAppProcessName -ErrorAction SilentlyContinue
    if($PhotoAppProcess -eq $null) {
        Write-Warning ("Photo App is not running will try to start the app")
        try {
            Invoke-Expression -Command $StartPhotoAppCommand -ErrorAction Stop
            Write-Information ("Photo App started successfully ;-) ")
        }
        catch {
            Write-Error ("Photo App could not be started!")
        }
    }
    else  {
        Write-Information ("Photo App is running")
    }
   Start-Sleep -Seconds $WaitSeconds
} until ($false)


