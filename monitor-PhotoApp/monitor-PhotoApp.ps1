Clear-Host
$WarningPreference = "Continue"
$InformationPreference = "Continue"
$PhotoAppProcessName = "Microsoft.Photos"
$WaitSeconds = 10
$StartPhotoAppCommand = "start ms-photos:"

$RestartCount = 0
do {
    $PhotoAppProcess = get-process -Name $PhotoAppProcessName -ErrorAction SilentlyContinue
    $PhotoAppStartTime = $PhotoAppProcess.StartTime
    $Now = Get-Date

    if($PhotoAppProcess -eq $null) {
        Write-Warning ("Photo App is not running will try to start the app")
        try {
            Invoke-Expression -Command $StartPhotoAppCommand -ErrorAction Stop
            Write-Information ("Photo App started successfully ;-) ")
            $RestartCount++
        }
        catch {
            Write-Error ("Photo App could not be started!")
        }
    }
    else  {
        $Duration = $now - $PhotoAppStartTime
        Write-Information ("Photo App is running")
        Write-Information ("Duration: " + $Duration.ToString())
        Write-Information ("Restarted App " + $RestartCount + " times")
        Write-Information ("Press Ctrl+F5 to stop this script")

    }
   Start-Sleep -Seconds $WaitSeconds
   Clear-Host
} until ($false)


