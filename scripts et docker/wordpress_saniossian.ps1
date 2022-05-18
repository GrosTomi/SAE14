docker pull mariadb
docker pull wordpress
docker run --detach --name mariadbConteneur --env MARIADB_USER=root --env MARIADB_PASSWORD=root --env MARIADB_ROOT_PASSWORD=root  --env MARIADB_DATABASE=mydb -p 3306:3306 mariadb:latest