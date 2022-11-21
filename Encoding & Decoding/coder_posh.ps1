 #Datos: Brayan Osvaldo Ortiz Mendez 1912975
 # Limpiando pantalla
 clear-Host
 # Mensaje de bienvenida
 Write-Host "Ejemplo de codificador Base64 en PS" -ForegroundColor Yellow
 Write-Host "Escribir una frase a codificar: " -ForegroundColor Yellow
 # Solicitando la entrada de una cadena de texto
 $frase = Read-Host
 # Codificando en Base64 y guardando resultado en una cadena
 $encod = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes(($frase)))
 # Imprimiendo la salida 
 write-Host "La frase escrita en Base 64 es: " -ForegroundColor Green
 Write-Output $encod