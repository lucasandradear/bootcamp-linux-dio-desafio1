#!/bin/bash

# Criando diretórios na raiz
mkdir /publico /adm /ven /sec

# Criando grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Permissões diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Criando usuários
## Usuários do grupo GRP_ADM
useradd carlos -m -c "Carlos" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
passwd carlos -e
useradd maria -m -c "Maria" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
passwd maria -e
useradd joao -m -c "João" -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senha123)
passwd joao -e

## Usuários do grupo GRP_VEN
useradd debora -m -c "Débora" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
passwd debora -e
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
passwd sebastiana -e
useradd roberto -m -c "Roberto" -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senha123)
passwd roberto -e

## Usuários do grupo GRP_SEC
useradd josefina -m -c "Josefina" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
passwd josefina -e
useradd amanda -m -c "Amanda" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
passwd amanda -e
useradd rogerio -m -c "Rogério" -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senha123)
passwd rogerio -e
