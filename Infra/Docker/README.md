# Course Docker by Alura

## Links
* https://github.com/docker
* https://kubernetes.io/

* Docker Compose: Um jeito fácil de definir e orquestrar multiplos containers.
* Docker Swarm: Ferramenta para colocar multiplos Dockers Host's para trabalharem juntos em cluster
* Docker Hub: Repositório com mais de 250 mil imagens diferentes para os seus containers.
* Docker Machine: Ferramenta que permite instalar e configurar em hosts virtuais.

## Install Docker Windows
* https://store.docker.com/editions/community/docker-ce-desktop-windows
* https://download.docker.com/win/stable/InstallDocker.msi
* https://download.docker.com/win/stable/DockerToolbox.exe

## Install Docker Mac
* https://store.docker.com/editions/community/docker-ce-desktop-mac
* https://download.docker.com/mac/stable/Docker.dmg
* https://download.docker.com/mac/stable/DockerToolbox.pkg
* https://docs.docker.com/docker-for-mac/install/#what-to-know-before-you-install

## Install Docker Ubuntu
* sudo apt-get remove docker docker-engine docker.io
* sudo apt-get update
* curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

* sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

* sudo apt-get update
* sudo apt-get install docker-ce

* Se o comando acima nao funcionar, siga os passos abaixo:

* Edit the file /etc/apt/sources.list.d/docker.list to read: deb [arch=amd64] https://apt.dockerproject.org/repo ubuntu-xenial main

* Then run:
* sudo apt-get update
* sudo apt-get install docker-engine

* O Docker Compose não é instalado por padrão no Linux, então você instalá-lo por fora. Para tal, baixe-o na sua versão mais atual, que pode ser visualizada no seu GitHub (https://github.com/docker/compose/releases), executando o comando abaixo:

* sudo curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

* Após isso, dê permissão de execução para o docker-compose: sudo chmod +x /usr/local/bin/docker-compose

## Commands Docker
* sudo docker version
* sudo usermod -aG docker $(whoami)
* docker version : verifica a versão do docker
* docker run hello-world : baixa a imagem do hello-world
* docker run ubuntu : baixa a imagem do ubuntu
* docker run ubuntu echo "Ola mundo" : exibe mensagem Ola mundo
* docker run -it ubuntu : comando para interagir com o terminal do container
* docker ps: lista os containers ativos
* docker ps -a: exibe todos os containers criados inclusive os que estão parados
* docker start id_container : inicia um especifico container
* docker stop id_container : para um especifico container
* docker start -a -i id_container : inicia um especifico container utilizando o terminal do container 
* docker rm id_container : remove um container especifico
* docker container prune : limpa todos os containers inativos
* docker image prune: limpa as imagens docker pendentes
* docker image prune -a: remove as imagens que não estão sendo utilizadas
* docker system prune --volumes: remove imagens, containers e redes
* docker images : mostra as imagens
* docker rmi id_container : remove a imagem de um container

## Example to create a container:
* docker run dockersamples/static-site
* docker run -d dockersamples/static-site : -d executar o docker em modo detached, este não trava o terminal
* docker run -d -P dockersamples/static-site : -d executar o docker e configura a porta onde será executado
* docker run -d -P --name meu-site dockersamples/static-site : -d executar o docker e configura a porta onde será executado dando um nome para  o mesmo
* docker run -d -p 12345:80 dockersamples/static-site : executar o container em uma porta especifica
* docker run -d -P -e AUTHOR="Bruno Lima" dockersamples/static-site : executar o container enviando um parametro (AUTHOR)
* docker ps -q : lista os ids dos containers
* docker stop -t 0 $(docker ps -q) : termina todos os containers que retornaram na consulta (docker ps -q)
* docker-machine ip : para descobrir o ip da maquina virtual (caso tenha instalado o Docker via toolbox)

## Working with volumes
* docker run -v "/var/www" ubuntu : criando um container que grava dados no docker host/localmente
* docker inspect id_container : inspeciona o container com o id em especifico
* docker run -it -v "C:\Users\bplima\Desktop:/var/www" ubuntu : Cria um container ubuntu e associa uma pasta ao desktop
* cd var/www/
* touch novo-arquivo.txt
* echo "Teste no arquivo gerado pelo volume" > novo-arquivo.txt

## Execute node with local files
* docker run -p 8080:3000 -v "C:\Users\Caelum\Desktop\volume-exemplo:/var/www"  -w "/var/www" node npm start
* docker run -d -p 8080:3000 -v "$(pwd):/var/www"  -w "/var/www" node npm start

## Create your own image
* docker build -f Dockerfile -t bonejah/node . : criando uma imagem e tagueando como bonejah/node
* docker rm -f id_container : remove e força o stop
* docker run -d -p 8080:3000  bonejah/node : executa a imagem criada

## Docker Hub
* docker login : logando no Docker HUB
* docker tag douglasq/nginx bonejah/nginx : criando uma tag para o seu id
* docker push bonejah/node : disponibilizando a imagem no docker hub
* docker pull bonejah/node : baixa a imagem 

## Creating your own net
* docker network create --driver bridge minha-rede : criando um rede no Docker
* docker network ls : verifica as redes criadas
* docker network inspect nome_da_rede_criada : inspeciona as imagens criadas em uma rede especifica
* docker run --name meu-container-ubuntu -it --network minha-rede ubuntu: criando um container e atrelando a uma rede criada

* docker pull douglasq/alura-books:cap05
* docker run -d -p 8080:3000 douglas1/alura-books:cap05
* docker run -d --name meu-mongo --network minha-rede mongo

## Connecting to DataBase
* docker run -d --name meu-mongo --network minha-rede mongo : executa a imagem do mongo e a associa a rede minha-rede
* docker run -d --network minha-rede -p 8080:3000 douglasq/alura-books:cap05 : sobe a aplicacao e a associa na rede minha-rede

## Docker Compose
* Crie um arquivo chamado docker-compose.yml
* docker-compose build : 
* docker-compose up : executa o arquivos docker-compose.yml
* docker-compose up -d : executa o arquivos docker-compose.yml e não trava o terminal]
* docker-compose ps : lista os servicos em execucao
* docker-compose down : para os servicos em execucao e remove os containers
* docker-compose restart : reinicializa os servicos
* docker exec -it alura-books-1 ping alura-books-2 : executa um ping 
* docker exec -it alura-books-1 ping node2 : executa um ping 

## Docker Cloud
* https://www.docker.com/ : crie uma conta no Docker
* https://aws.amazon.com/pt/console/ : crie uma conta na Amazon (boneAWS)
* https://console.aws.amazon.com/iam/home?#/roles : Crie uma politica

## Create a policy
* https://console.aws.amazon.com/iam/home?#/policies

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "ec2:*",
                "iam:ListInstanceProfiles"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}

## Create a role
* https://console.aws.amazon.com/iam/home#/roles








