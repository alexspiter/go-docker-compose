app_up:
	docker-compose -f docker-compose-services.yml up -d
	docker-compose -f docker-compose-app.yml up

app_down:
	docker-compose -f docker-compose-services.yml down
