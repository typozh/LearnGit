Clear-Host
$WarningPreference = "Continue"
$InformationPreference = "Continue"
$PhotoAppProcessName = "Microsoft.Photos"
$WaitSeconds = 10

do {
    $PhotoAppProcess = get-process -Name $PhotoAppProcessName -ErrorAction SilentlyContinue
    if($PhotoAppProcess -eq $null) {
        Write-Warning ("Photo App is not running")
    }
    else  {
        Write-Information ("Photo App is running")
    }
   Start-Sleep -Seconds $WaitSeconds
} until ($false)

