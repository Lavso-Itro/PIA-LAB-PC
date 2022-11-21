# Datos: Brayan Osvaldo Ortiz Mendez 1912975
# Limpiando pantalla
#
Clear-Host
#
# Mensaje de bienvenida
#
Write-Host "Ejemplo de Decodificador Base64 en Ps" -ForegroundColor Yellow
#
# Mensaje codificado en Base64
#
$texto = 'TABhAGIAbwByAGEAdABvAHIAaQBvACAAZABlACAAUAByAG8AZwByAGEAbQBhAGMAaQDzAG4AIABwAGEAcgBhACAAQwBpAGIAZQByAFMAZQBnAHUAcgBpAGQAYQBkACAAUwBlAHMAaQDzAG4AIAAxADAA'
Write-Host " La cadena a decodificar es: "
Write-Host $texto
#
# Decodificando mensaje
#
$decod = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($texto))
Write-Host "La cadena ya decodificada es: " -ForegroundColor green
Write-Host $decod