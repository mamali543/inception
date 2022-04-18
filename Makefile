all: add_dirs add_host build up

add_dirs:
	mkdir -p /home/reda/data/db
	mkdir -p /home/reda/data/wp
add_host:
	echo "127.0.0.1       mamali.42.fr" >> /etc/hosts

stop:
	docker-compose -f srcs/docker-compose.yml stop

restart:
	docker-compose -f srcs/docker-compose.yml restart

build:
	docker-compose -f srcs/docker-compose.yml build
up:
	docker-compose -f srcs/docker-compose.yml up -d

down :
	docker-compose -f srcs/docker-compose.yml  down

clean: down
	docker system prune -a -f
	docker image prune -f
	docker volume prune -f
	docker network prune -f
	docker images -q | xargs -r docker rmi
	docker volume ls -q | xargs -r  docker volume rm

fclean: clean