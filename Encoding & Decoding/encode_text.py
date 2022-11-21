import base64
#Datos: Brayan Osvaldo Ortiz Mendez 1912975
# Obtenemos una frase desde el input principal
#
print ("Bienvenido a codificadorBase64 en python")
frase = input("Proporciona una frase para codificar: ")
#
# Obtenemos los bytes de la frase
#
frase_bytes = frase.encode('ascii')
#
# Se calculan los bytes en base64
#
base64_bytes = base64.b64encode(frase_bytes)
#
# Se genera mensaje en base64
#
base64_message = base64_bytes.decode('ascii')
print("La frase codificada en Base64 es: ")
print(base64_message)