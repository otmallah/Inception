all :
	cd srcs && \
	docker-compose up --build
build :
	cd srcs && \
	docker-compose build
down :
	cd srcs && \
	docker-compose down
clean :
	docker system prune -a