$cels = "$env:USERPROFILE\Documents\Warnings.txt"

$laiks = (Get-Date).AddDays(-3)

$br = Get-WinEvent -LogName Application | Where-Object {
    $_.LevelDisplayName -eq "Warning" -and $_.TimeCreated -gt $laiks
}

$br | Out-File $cels

$grupas = $br | Group-Object ProviderName | Sort-Object Count -Descending | Select-Object -First 3

"`nTop avoti:" | Out-File $cels -Append

foreach ($g in $grupas) {
    "$($g.Name) - $($g.Count)" | Out-File $cels -Append
}