build:
	docker build --platform=linux/amd64 . -t strapi

build-prod:
	docker build --platform=linux/amd64 . -f Dockerfile.prod -t strapi-prod

run-db-docker:
	docker run -e POSTGRES_USER=strapi -e POSTGRES_PASSWORD=strapi -e POSTGRES_DB=strapi -p 5432:5432 postgres

run-app:
	docker run --platform=linux/amd64 --env-file .env -e DATABASE_HOST=host.docker.internal -p 1337:1337 strapi