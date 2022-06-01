SHELL=/bin/bash

.PHONY: run
run:
	bundle install
	bundle exec ruby app.rb

.PHONY: ngrok
ngrok:
	ngrok start sinatra

.PHONY: lint
lint:
	rubocop

.PHONY: migrate
migrate:
	bundle exec rake db:migrate

