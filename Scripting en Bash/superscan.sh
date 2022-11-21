#!\bin\bash /home/afterdark/Documentos
#
#Brayan Osvaldo Ortiz Mendez 1912975
#24-09-2022
# Ejemplo de Menu en BASH
#
date
echo "---------------------------"
echo "   Menu Principal"
echo "---------------------------"
echo "1. NetDiscover"
echo "2. PortScanv1"
echo "3. Welcome"
echo "4. Exit"
read -p "Opción  [ 1 - 4 ] " c
case $c in
        1) bash ./netdiscover.sh;;
        2) read -p "Escribe tu IP: " IP; bash ./portscanv1.sh $IP;;
        3) bash ./welcome.sh;;
        4) echo "Finalizando..."; exit 0;;
esac
