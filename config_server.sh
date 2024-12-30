#!/bin/bash

echo "Iniciando configuração de servidor V.1"

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios /publico /adm /ven /sec criados na pasta raíz!"

echo "Dando acesso a todos os usuários ao diretório /publico"
chmod 777 /publico
echo "Ação realizada!"

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos de usuários Adm, Vend. e Sec criados!"

echo "Configurando pastas dos grupos e suas permissões..."
chown root:GRP_ADM /adm
chmod 770 /adm
chown root:GRP_VEN /ven
chmod 770 /ven
chown root:GRP_SEC /sec
chmod 770 /sec
echo "Configuração finalizada!"

echo "Criando usuários e configurando grupos"
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
echo "Criação de de usuários finalizadas!"

echo "Finalizada configuração de servidor !"
echo "Feito por Gustavo Coimbra"
