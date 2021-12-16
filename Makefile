
up: docker-compose.yml
	@docker-compose up -d

down:
	@docker-compose down

clean:
	@echo clean all containr and volume and image
	@docker system prune -a  -f
	docker volume rm share_WordPress_db
	docker volume rm share_DB

re:
	docker-compose up -d



