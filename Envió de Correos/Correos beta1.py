#Brayan Osvaldo Ortiz Mendez 1912975 30-10-22
from email.message import EmailMessage
import smtplib

conn = smtplib.SMTP('smtp.gmail.com',587)
conn.ehlo()
conn.starttls()
#Iniciar sesion
conn.login('brayan2002ortz@gmail.com','reeuwgdzwjjmpkso')

#Datos de envio
remitente = "brayan2002ortz@gmail.com"
destinatario = "brayan.ortizmn@uanl.edu.mx"  #gerardo.bernal

#Cuerpo del mensaje
mensaje = "<H2><strong>Practica 12</strong><br></H2> <p>Ejercicio de la practica 12 para envio de correos</p> " \
          "<p><strong>Alumno:</strong> Brayan Osvaldo Ortiz Mendez</p> " \
          "<p><strong>Matricula:</strong> 1912975</p>"

#Estructura del mensaje del correo
email = EmailMessage()
email["From"] = remitente
email["To"] = destinatario
email["Subject"] = "Prueba de envio (script Python) - 1912975"
#Convertir a HTML
email.set_content(mensaje, subtype="html")
#Adjuntar la imagen
with open("fcfm_cool.png", "rb") as f:
    email.add_attachment(
        f.read(),
        filename="fcfm_cool.png",
        maintype="image",
        subtype="png"
    )
#Enviar imagen
conn.sendmail(remitente, destinatario, email.as_string())
#Cerrar sesion
conn.quit()