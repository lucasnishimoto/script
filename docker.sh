#!/bin/bash
echo "Verificando se tem o docker..."
docker version 
if [ $? -eq 0 ]; then 
	echo "Voce já possui o docker"
	exit
else
	echo "Você não possui o docker, deseja instalar ? [ S / N]"
	read RESPONSE
		if [[ $RESPONSE != 'N' && $RESPONSE != 'n' ]]; then
			echo "Instalando o docker..."
			curl -sSL get.docker.com | bash 
		else 
			echo "Ok, bye !"
			exit
	fi 
fi

########################################
#                                      #
#  copyright © 2022 by Lucas Nishimoto #  
#  All rights reserved.                #  
#                                      #
######################################## 
