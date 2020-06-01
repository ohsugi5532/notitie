init:
	@export GO111MODULE=off \
		&& go get \
		github.com/rubenv/sql-migrate/... \

run:
	@go run ./cmd/api/main.go

start:
	@docker-compose up -d api db

stop:
	@docker-compose stop

down:
	@docker-compose down

restart:
	@docker-compose restart

log:
	@docker-compose logs -f

api_log:
	@docker-compose logs -f api

migrate_new:
	@sql-migrate new $(name)

migrate_up:
	@sql-migrate up

migrate_down:
	@sql-migrate down
