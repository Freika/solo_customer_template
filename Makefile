# Setting up the project
build:
	docker-compose build --no-cache

setup_backend: bundle

setup:
	make bundle
	make setup_frontend
	make setup_db

bundle:
	docker-compose run --rm solo_customer_template_app gem install bundler --conservative
	docker-compose run --rm solo_customer_template_app bundle install

setup_frontend:
	npm i daisyui

setup_db:
	docker-compose run --rm solo_customer_template_app rails db:create db:migrate db:seed

migrate:
	docker-compose run --rm solo_customer_template_app bin/rails db:migrate
rollback:
	docker-compose run --rm solo_customer_template_app bin/rails db:rollback
# Setting up the project


# Debugging the project
bash:
	docker-compose run --rm solo_customer_template_app sh

console:
	docker-compose run --rm solo_customer_template_app bundle exec rails c

debug:
	docker attach solo_customer_template_app
# Debugging the project

start:
	docker-compose up -d solo_customer_template_app
	make debug

overmind:
	overmind start -f Procfile.dev
# Running the project

test:
	RAILS_ENV=test NODE_ENV=test docker-compose run --rm solo_customer_template_test bundle exec rspec
# Running tests

deploy:
	git push dokku master

unlock_deploy:
	ssh dokku_frey 'dokku apps:unlock solo_customer_template'

tail_production_log:
	ssh dokku_frey 'dokku logs solo_customer_template --tail'

production_migrate:
	ssh dokku_frey 'dokku run solo_customer_template bundle exec rails db:migrate'
