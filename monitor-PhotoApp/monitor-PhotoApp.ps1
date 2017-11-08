Clear-Host

$PhotoAppProcessName = "Microsoft.Photos"
$WaitSeconds = 10
do {
    $PhotoAppProcess = get-process -Name $PhotoAppProcessName -ErrorAction SilentlyContinue
    if($PhotoAppProcess -eq $null) {
        Write-Host ("Photo App is not running")
    }
    else  {
        Write-Host ("Photo App is running")
    }
   Start-Sleep -Seconds $WaitSeconds
} until ($false)

