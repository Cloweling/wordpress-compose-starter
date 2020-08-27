install:
	if [ ! -d $(PWD)/wp-content ]; then \
		mkdir wp-content; \
		echo -e "Created wp-content"; \
	fi

	docker-compose up -d
	sudo find wp-content -type d -exec chmod 2775 {} +
	sudo find wp-content -type f -exec chmod 0664 {} +
	echo -e "Installation successful"

uninstall:
	docker-compose down --volumes
	rm -rf wp-content

start:
	docker-compose up -d

stop:
	docker-compose down