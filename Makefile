dev_up:
	docker-compose -f docker-compose-dev.yml run --name app --service-ports --rm app

debug:
	docker-compose -f docker-compose-dev.yml run --service-ports app dlv debug --output=/go/bin/debug --headless=true --listen=:2345 --api-version=2

prod_up:
	docker-compose -f docker-compose-prod.yml up -d --build

prod_down:
	docker-compose -f docker-compose-prod.yml down
