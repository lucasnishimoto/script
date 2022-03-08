#!/bin/bash
echo "Será somente em uma maquina ? [ S / N ]"
read RESPONSE
if [[ $RESPONSE != 'S' && $RESPONSE != 's' ]]; then
    echo "Por favor digitar user que será usado no ssh: Ex: root"
    read USER
    echo "Por favor digitar a senha que será usado no ssh"
    read PASSWORD
    echo "Por favor digitar o range de ips. Ex: 10.10.10"
    read RANGE
    for i in  $(seq 255); do sshpass -p "$PASSWORD" ssh-copy-id -o ConnectTimeout=3 -o StrictHostKeyChecking=no $USER@$RANGE.$i; done
else
    echo "Por favor digitar user que será usado no ssh: Ex: root"
    read USER
    echo "Por favor digitar a senha que será usado no ssh"
    read PASSWORD
    echo "Por favor digitar o range de ips. Ex: 10.10.10"
    read RANGE
    sshpass -p "$PASSWORD" ssh-copy-id -o ConnectTimeout=3 $USER@$RANGE.$i
fi

########################################
#                                      #
#  copyright © 2022 by Lucas Nishimoto #  
#  All rights reserved.                #  
#                                      #
######################################## 
