import requests
import json
#Brayan Osvaldo Ortiz Mendez
#1912975

if __name__ == '__main__':
    url = "http://httpbin.org/post"
    argumentos = {'nombre':'Brayan','matricula':'1912975','curso':'Programacion para Ciberseguridad'}

    response = requests.post(url, params=argumentos)

    if response.status_code ==  200:
        print(response.content)