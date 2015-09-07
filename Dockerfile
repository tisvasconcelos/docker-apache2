# Cria a imagem apartir do ubuntu 
FROM ubuntu:trusty

# Instalando o apache2, curl
RUN apt-get -y update && apt-get install -y apache2 curl

# Expondo a porta 80 do container
EXPOSE 80

# Rodando o apache2 em primeiro plano (foreground)
CMD /usr/sbin/apache2ctl -D FOREGROUND
