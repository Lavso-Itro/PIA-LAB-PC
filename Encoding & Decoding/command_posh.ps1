# Datos: Brayan Osvaldo Ortiz Mendez 1912975
Clear-Host
# Comando de PS a codificar en Base64
#
$comando = 'Get-WmiObject win32_logicaldisk | foreach {Write-Host $_.deviceID $_.size $_.freespace}'
#
# Codificando $comando
#
$encode = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($comando))
Write-Host $encode
#
# Ejecutando el comando codificado
#
Write-Host "Vamos a ejecutar el comando asi: powershell -E "$encode -ForegroundColor Cyan
Start-Sleep 1
powershell -E $encode
#
Start-Sleep 2
#
# $comando_secret guarda un comando codificado en Base64
#
$comando_secret='RwBlAHQALQBXAG0AaQBPAGIAagBlAGMAdAAgAHcAaQBuADMAMgBfAGIAYQBzAGUAcwBlAHIAdgBpAGMAZQAgAHwAZgBvAHIAZQBhAGMAaAAgAHsAVwByAGkAdABlAC0ASABvAHMAdAAgACQAXwAuAGQAaQBzAHAAbABhAHkAbgBhAG0AZQAgACQAXwAuAHMAdABhAHQAZQB9AA=='
#
# Decodificamos el comando
#
$decod = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($comando_secret))
#
## Mostramos el resultado
#
Write-Host "El comando codificado es:" -ForegroundColor Cyan
Write-Host $comando_secret
Write-Output ""
Write-Host "El comando ya sin codificar:" -ForegroundColor Cyan
Write-Host $decod