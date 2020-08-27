# docker-compose-starter

This repository was created as part of a tutorial on how to [setup a local development environment to build a WordPress theme](https://davidyeiser.com/tutorial/docker-wordpress-theme-setup).

## Installation

If you don’t have Docker and Docker Compose installed follow the steps outlined in the blog post linked above.

With Docker installed and running, in Terminal:

````
sudo usermod -a -G www-data username
````

Then clone the project: 
````
git clone https://github.com/Cloweling/wordpress-compose-starter.git
cd docker-compose-starter
````

Then raise the project:

````
docker-compose up
````

Then inside the wp-content folder change the permissions so that the www-data group can modify:
````
cd wp-content
sudo find /var/www -type d -exec chmod 2775 {} +
sudo find /var/www -type f -exec chmod 0664 {} +
````

Then to continue the installation of wordpress with your browser go:
````
http://localhost:8000/
````

If you want to restart your installation, delete the content of wp-content and type the following command:
````
docker-compose down --volumes
````