#! /bin/bash

echo " Verificando se ja tem o java instalado"
    sleep 2
            java -version
        if ! [ $? -eq 0 ];
    then
            echo "Você não tem o java instalado, deseja instalar agora ?"
        if [$resposta == s]
    then
            echo "Voce escolheu instalar o java "
            sudo apt install openjdk-11-jdk
            sudo add-apt-repository ppa:webupd8team/java
            sudo apt-get update
            clear
 
        else
            echo "Você escolheu não instalar o java ate a proxima :)"
    fi
        else
            echo "Qual a versao que voce tem instalado ? (8,11,14...)"
    fi
        read versao
        if ! [ $versao -eq '11' ];
    then
        echo "versao diferente da 11"
	sudo apt install openjdk-11-jdk
        sudo add-apt-repository ppa:webupd8team/java
        sudo apt-get update
	sudo update-alternatives --config java
	clear
else
        echo " versao igual a 11"
    fi
        git clone https://github.com/Luis-Silva80/Arquivos.git
        cd Arquivos
        chmod +x api-captura-get-1.0-SNAPSHOT.jar
        chmod +x api-captura-get-1.0-SNAPSHOT-jar-with-dependencies.jar
        sleep 2
        java -jar api-captura-get-1.0-SNAPSHOT-jar-with-dependencies.jar

