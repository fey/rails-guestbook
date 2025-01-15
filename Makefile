start:
	rm -rf tmp/pids/server.pid || true
	bin/rails s
setup: install db-prepare

install:
	bin/setup

db-prepare:
	bin/rails db:reset
	bin/rails db:fixtures:load

check: test lint

test:
	bin/rails test

lint:
	bundle exec rubocop
	bundle exec slim-lint app/views/

lint-fix:
	bundle exec rubocop -A

compose-production-run-app:
	docker compose -p rails_bulletin_board_project_ru-production -f docker-compose.production.yml build
	docker compose -p rails_bulletin_board_project_ru-production -f docker-compose.production.yml up

compose-production-console:
	docker compose -p rails_bulletin_board_project_ru-production -f docker-compose.production.yml exec app bin/rails console


.PHONY: test
