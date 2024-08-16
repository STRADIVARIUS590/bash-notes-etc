#!bin/bash 

# script name

# escenario: EL administrador de sistemas de X compañina esta cansado del 
# trabajo monotono de hacer ping y nmap , Hacer un script que lo automatice. requisitos

# ping con un maximo de 5 la direccion ip/dominio
#  Verificat si un puerto particular esta abierto en un a dieccion ip/ dominio 
#  OPCIONEs

# n : nmap
# t : ping
# i: direccion ip
# p: puerto
# v : version del script

while getopts 'nti:p:v' opt

do
case "$opt" in
    'i')ip="${OPTARG}"
    ;;
    'p')port="${OPTARG}"
    ;;
    'n')nmap_yes=1;
    ;;
    't')ping=_yes=1;
    ;;
    'v') echo "pingmap version 1.1.1"
    ;;
    *) echo "Invalid option $opt"
    echo "usage:" 
    echo "pingmap -[n|t|[i|p]v]"
    ;;
esac 
done 
if [ ! -z "$nmap_yes" ] && [ "$nmap_yes" -eq "1" ]
then 
   if [ ! -z "$ip" ] && [ ! -z "$port" ]
    then
        echo "nmap"
        # nmap -p "$port" "$ip"
    fi
fi

if [ ! -z "$ping_yes" ] && ["$ping_yes" -eq "1"]
then
    if [ ! -z "$ip"]
    then 
        echo "PIN"
        # ping -c 5 "$ip"
    fi
fi 

shift $(( OPTIND -1 )) #procesar argumentos adicionals
if [ ! -z "$@" ]
then 
    echo "bogus arg at end"
fi