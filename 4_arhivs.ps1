$downloadsPath = "$env:USERPROFILE\Downloads"
$zipPath = "$env:USERPROFILE\Documents\PDF_Backup.zip"

$pdfFaili = Get-ChildItem $downloadsPath -Filter *.pdf | Where-Object {
    $_.LastWriteTime -gt (Get-Date).AddHours(-48)
}

Compress-Archive -Path $pdfFaili.FullName -DestinationPath $zipPath -Force