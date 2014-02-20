all: css/style.css

css/style.css: css/style.styl
	stylus --use ./node_modules/nib/lib/nib css/style.styl

build:
	jekyll build

server:
	jekyll serve --watch

.PHONY: build server
