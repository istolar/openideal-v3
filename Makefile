include .env

install:
	make composer-install
	make site-install

composer-install:
	composer install

site-install:
	docker-compose exec php ../vendor/bin/drush site-install openideal \
		--local=en \
		--account-name=$(ACCOUNT_NAME) \
		--account-mail=$(ACCOUNT_EMAIL) \
		--account-pass=$(SITE_PASSWORD) \
		--db-url=mysql://$(DB_USER):$(DB_PASSWORD)@mariadb:3306/$(DB_NAME) \
		--site-name="$(SITE_NAME)" \
		install_configure_form.update_status_module='array(FALSE,FALSE)' \
		-y
