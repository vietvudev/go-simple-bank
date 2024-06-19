migrate-up:
	migrate -path db/migration -database "postgresql://simplebank:1234abcd@localhost:5432/simplebank?sslmode=disable" -verbose up

migrate-down:
	migrate -path db/migration -database "postgresql://simplebank:1234abcd@localhost:5432/simplebank?sslmode=disable" -verbose down

sqlc: 
	sqlc generate

test: 
	go test -v -cover ./...

.PHONY: migrate-up migrate-down sqlc test
