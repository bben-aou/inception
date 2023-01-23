all:	up

up:
		@mkdir -p /home/${USER}/data/mariadb
		@mkdir -p /home/${USER}/data/wordpress
		@mkdir -p /home/${USER}/data/website
		@docker compose -f srcs/docker-compose.yml up -d

down:
		@docker compose -f srcs/docker-compose.yml down

ps:
		@docker compose -f srcs/docker-compose.yml ps

fclean:	down
		@docker rmi -f $$(docker images -qa);\
		docker volume rm $$(docker volume ls -q);\
		# docker network rm $$(docker network ls -q);\
		docker system prune -a --force
		sudo rm -Rf /home/${USER}/data/mariadb
		sudo rm -Rf /home/${USER}/data/wordpress
		sudo rm -Rf /home/${USER}/data/website
		mkdir /home/${USER}/data/mariadb
		mkdir /home/${USER}/data/wordpress
		mkdir /home/${USER}/data/website

re:
		@mkdir -p ../data/wordpress
		@mkdir -p ../data/mariadb
		@mkdir -p ../data/website
		@docker compose -f srcs/docker-compose.yml build
		docker compose -f srcs/docker-compose.yml up

.PHONY:	all up down ps fclean re