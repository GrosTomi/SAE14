docker pull mariadb
docker pull wordpress
docker pull phpmyadmin

docker network create sae23_saniossian

docker run --detach --name mariadbConteneur --env MARIADB_USER=user --env MARIADB_PASSWORD=paswd --env MARIADB_ROOT_PASSWORD=root  --env MARIADB_DATABASE=mydb -p 3306:3306 --network sae23_saniossian mariadb:latest

docker exec -it mariadbConteneur bash
ip a
apt-get update
apt-get install iputils-ping
ping mariadbConteneur
exit

docker run --name myadmin -d --network sae23_saniossian -p 9000:80 --env PMA_HOST=mariadbConteneur phpmyadmin