all: build

build:
	jekyll build

server:
	jekyll serve --watch

.PHONY: build server
