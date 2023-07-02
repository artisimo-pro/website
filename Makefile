all: clean html

.PHONY: deps
deps:
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
	cp index.html html/

.PHONY: css
css:
	mkdir -p html/css
	sass scss/custom.scss html/css/custom.css
