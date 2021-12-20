
up: srcs/docker-compose.yml
	@docker-compose -f srcs/docker-compose.yml up -d

down:
	@docker-compose -f srcs/docker-compose.yml down

clean:
	@echo clean all containr and volume and image
	@docker system prune -a  -f
	docker volume rm -f srcs_WordPress_db
	docker volume rm -f  srcs_DB
	rm -rf /home/ssamadi/data/DB/*
	rm -rf /home/ssamadi/data/WordPress/*

re: down clean up



