docker-build:
	docker-compose build
docker-build-pull:
	docker-compose build --pull
docker-up:
	docker-compose up -d
version:
	docker-compose run --rm nodejs-cli-debian node --version && npm --version
init:
	docker-compose run --rm -u 1000:1000 nodejs-cli-debian npm init
install-is-null:
	docker-compose run --rm -u 1000:1000 nodejs-cli-debian npm install --save-dev jest browser-sync
install-deps:
	docker-compose run --rm -u 1000:1000 nodejs-cli-debian npm ci
test:
	docker-compose run --rm -u 1000:1000 nodejs-cli-debian npm test
test-coverage:
	docker-compose run --rm -u 1000:1000 nodejs-cli-debian npm test -- --coverage --coverageProvider=v8
start:
	docker-compose run --rm -u 1000:1000 -p 3001:3001 nodejs-cli-debian npx browser-sync start --server 'src/dom' --files 'src/dom'