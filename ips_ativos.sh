#!/bin/bash 
echo "Por favor digitar o range de ips. Ex: 10.10.10"
read VAR_IP
echo "Começando a validar.. Todos que funcionram estão no arquivo: lista.ips"
for i in $(seq 255); do ping -c 1 $VAR_IP.$i > /dev/null ; if [ $? -eq 0 ] ; then  echo $VAR_IP.$i >>  lista.ips;  fi ; done
echo "script concluido"

########################################
#                                      #
#  copyright © 2022 by Lucas Nishimoto #  
#  All rights reserved.                #  
#                                      #
######################################## 