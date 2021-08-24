
#URL del contenido a descargar
$downloadurl = "http://download.spotify.com/SpotifyFullSetup.exe"

#Tamaño del archivo 
$size = 76.6

#Directorio y nombre del arvhivo a guardar
$documents = [Environment]::GetFolderPath("MyDocuments")
$localfile = "$documents/PruebaTele.bin"


#Script de Ejecución
$downloadstart_time = Get-Date
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($downloadurl, $localfile)
$downloadtimetaken = $((Get-Date).Subtract($downloadstart_time).Seconds)
$downloadspeed = ($size / $downloadtimetaken)*8
Write-Output "Tiempo de Descarga: $downloadtimetaken second(s)   |   Velocidad de Descarga: $downloadspeed mbps"



