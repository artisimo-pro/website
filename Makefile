all: clean html

.PHONY: deps
deps:
	brew install sass/sass/sass
	npm install bootstrap

.PHONY: clean-deps
clean-deps:
	rm -rf node_modules \
		package.json \
		package-lock.json

.PHONY: clean
clean:
	rm -f html/css/*.css \
		html/css/*.css.map \
		html/*/*.html \
	rm -rf .sass-cache/

.PHONY: html
html: css
	cp html/index.html docs/index.html

.PHONY: css
css:
	mkdir -p docs/css
	sass scss/custom.scss docs/css/custom.css
