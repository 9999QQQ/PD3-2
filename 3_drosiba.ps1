$rezultats = 100

$info = Get-MpComputerStatus

if ($info.RealTimeProtectionEnabled -eq $false) {
    $rezultats = $rezultats - 50
}

if ($info.AntivirusSignatureAge -gt 3) {
    $rezultats -= 20
}

if ($info.QuickScanAge -gt 7) {
    $rezultats -= 20
}

Write-Output "Sistēmas drošības reitings: $rezultats / 100"