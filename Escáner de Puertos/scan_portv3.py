#!/usr/bin/python
# -*- coding: utf-8 -*-
#Brayan Osvaldo Ortiz Mendez 1912975 28-10-22
#P1
import sys
import threading
from socket import *

#P2
def tcp_test(port):
    sock = socket(AF_INET, SOCK_STREAM)
    sock.settimeout(10)
    result = sock.connect_ex((target_ip, port))
    if result == 0:
        print("Opened Port:",port)
#P3
if __name__=='__main__':
    host = sys.argv[1]
    portstrs = sys.argv[2].split('-')
#P4
    start_port = int(portstrs[0])
    end_port = int(portstrs[1])
#P5
    target_ip = gethostbyname(host)
#P6
    hilos = []
    for port in range(start_port, end_port):
        hilo = threading.Thread(target=tcp_test, args=(port,))
        hilos.append(hilo)
        hilo.start()
