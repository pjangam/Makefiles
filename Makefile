.PHONY: all
all:test


.PHONY: test
test:
	-docker stop db
	env ENVIRONMENT=DEV npm test dev

.PHONY: run
run:build
	-docker start db
	npm run dev

.PHONY: clean
clean:
	rm -rf node_modules

.PHONY:
build:
	npm i

.PHONY: prepare
prepare:
	-docker start db
