build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

dev: down up log

log:
	docker logs --follow djangoapp

enter:
	docker exec -it djangoapp sh

enter-db:
	docker exec -it db sh