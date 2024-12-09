#!/bin/bash

# Atualizando os pacotes do sistema

  						 echo "                                                                       Atualizando o sistema..."
apt-get update
apt-get upgrade -y

# Instalando Apache e unzip

					     	echo "                                                                        Instalando o pacotes..."
apt-get install apache2 -y
apt-get install unzip -y

# Baixando os arquivos do repositório

						echo "                                                                        Baixando arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


						echo "                                                                        Extraindo arquivos na pasta /tmp"
# Extraindo os arquivos baixados
unzip main.zip


						echo "                                                                          Acessando diretorio criado pela extração de arquivos"
# Movendo para o diretório correto
cd linux-site-dio-main


						echo "                                                                         Copiando arquivos para diretorio do Apache"
# Copiando os arquivos para o diretório do Apache
cp -R * /var/www/html/
