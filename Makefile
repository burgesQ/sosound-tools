NAME		= sosound-tools

RM			= rm -f

.PHONY: all
## all: Run the build target
all:	$(NAME)
$(NAME):	build run

.PHONY:	build
## build: Build the docker image
build:
	@docker build --rm -t $(NAME) .

.PHONY: run
## run: Start the docker-compose stack
run:
	@docker-compose up

.PHONY: stop
## stop: Stop the docker-compose stack
stop:
	@docker-compose stop

.PHONY:	help
## help: Prints this help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'
