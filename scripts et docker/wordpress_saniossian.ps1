docker pull mariadb
docker pull wordpress
docker run --detach --name mariadbConteneur --env MARIADB_USER=user --env MARIADB_PASSWORD=paswd --env MARIADB_ROOT_PASSWORD=root  --env MARIADB_DATABASE=mydb -p 3306:3306 mariadb:latest
docker exec -it conteneur_mariadb bash
ip a
apt-get update
apt-get install iputils-ping
ping mariadbConteneur
exit
docker network create sae23_saniossian
docker run --detach --name mariadbConteneur --env MARIADB_USER=user --env MARIADB_PASSWORD=paswd --env MARIADB_ROOT_PASSWORD=root  --env MARIADB_DATABASE=mydb -p 3306:3306 --network sae23_saniossian mariadb:latest
docker exec -it mariadbConteneur bash
ip a
apt-get update
apt-get install iputils-ping
ping mariadbConteneur
exit