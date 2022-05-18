docker pull mariadb
docker pull wordpress
docker run --detach --name mariadbConteneur --env MARIADB_USER=root --env MARIADB_PASSWORD=root --env MARIADB_ROOT_PASSWORD=root  --env MARIADB_DATABASE=mydb mariadb:latest -p 3306:3306
docker start mariadbConteneur