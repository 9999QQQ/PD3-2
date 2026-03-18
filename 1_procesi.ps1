$visiProcesi = Get-Process

$filtreti = $visiProcesi | Where-Object {
    ($_.WorkingSet -gt 150MB) -and ($_.Name -ne "msedge")
}

$filtreti | Select-Object Name, Id, WorkingSet |
Export-Csv "$env:USERPROFILE\Documents\LielieProcesi.csv" -NoTypeInformation