$saraksts = winget list

$storeApps = $saraksts | Select-String "msstore"

$skaits = ($storeApps | Measure-Object).Count

Write-Output "Sistēmā ir instalētas $skaits aplikācijas no Microsoft Store."