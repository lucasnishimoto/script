#!/bin/bash 
    echo "Por favor informar a porta em questão.."
read DOOR
    echo "Verificando..."
sleep 2 
sudo netstat -tulpn | grep ":$DOOR" | awk '{print $NF}'
    echo "Por favor informar a PID para encerrar a aplicação. Ex: 444, 1234"
read PID
    echo "Encerando o processo na porta: $DOOR, PID: $PID ..." 
sleep 3
sudo kill -9 $PID
if [ $? -eq 0 ]; then
    echo "Script concluido com sucesso :)"
else 
    echo "Erro, Por favor verificar"
fi

########################################
#                                      #
#  copyright © 2022 by Lucas Nishimoto #  
#  All rights reserved.                #  
#                                      #
######################################## 