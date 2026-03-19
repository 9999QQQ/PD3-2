$logFails = "$env:USERPROFILE\Documents\Servisi.log"
$datums = Get-Date

$nosaukumi = @("Spooler", "wuauserv")

foreach ($serviss in $nosaukumi) {
    $dati = Get-Service $serviss
    "$datums Serviss $($dati.Name) ir $($dati.Status)" | Out-File $logFails -Append
}