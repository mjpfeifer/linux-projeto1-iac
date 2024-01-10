#!/bin/bash

echo "Excluindo pastas e arquivos..: publico, adm, ven, sec"

cd /
rm -f -r publico
rm -f -r adm
rm -f -r ven
rm -f -r sec

groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC

#userdel -f -r guest guest10

userdel -f -r guest
userdel -f -r guest10
userdel -f -r guest11
userdel -f -r guest12
userdel -f -r guest13
userdel -f -r guest14


userdel -f -r mariana
userdel -f -r daniel
userdel -f -r maisa
userdel -f -r rodrigo

userdel -f -r carlos
userdel -f -r maria
userdel -f -r joao
userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto
userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio

echo "Criando os grupos de usuarios......"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando os usuarios......"

useradd carlos     -c "Carlos Silva" -m -s /bin/bash -G GRP_ADM
useradd maria      -c "Maria Silva" -m -s /bin/bash -G GRP_ADM
useradd joao       -c "Joao Silva" -m -s /bin/bash -G GRP_ADM

useradd debora     -c "Debora Silva" -m -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -G GRP_VEN
useradd roberto    -c "Roberto Silva" -m -s /bin/bash -G GRP_VEN

useradd josefina   -c "Josefina Silva" -m -s /bin/bash -G GRP_SEC
useradd amanda     -c "Amanda Silva" -m -s /bin/bash -G GRP_SEC
useradd rogerio    -c "Rogerio Silva" -m -s /bin/bash -G GRP_SEC

echo "criando diretorios....publico, adm, ven, sec"

cd /

mkdir publico
mkdir adm
mkdir ven
mkdir sec

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Fim do script de criacao de usuarios, grupos e pastas......"



