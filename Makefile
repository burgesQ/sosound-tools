NAME		= sosound-tools

RM			= rm -f

.PHONY: all
## all: Run the build target
all:	$(NAME)
$(NAME):	build

.PHONY:	build
## build: Build the docker image
build:
	@docker build --rm -t $(NAME) .

.PHONY:	help
## help: Prints this help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'
