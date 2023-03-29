#!/bin/bash

echo "Criando diretórios..."

mkdir /publico /adm /ven /sec

echo "Finalizado a criação dos diretórios!"

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Finalizado a criação dos grupos!"

echo "Criando usuários e adicionando as seus respectivos grupos..."
echo "Usuários grupo ADM..."

#-----------  Utilizando openssl 3.+ ----------------
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

echo "Usuários grupo VEN..."

useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

echo "Usuários grupo SEC..."

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Finalizado a criação dos usuários!"

echo "Alterando as permissões dos diretórios..."

chmod 777 /publico
chmod 770 /adm /ven /sec

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Finalizado as alterações das permissões!"
echo "Fim!"