# docker-compose-starter

This repository was created as part of a tutorial on how to [setup a local development environment to build a WordPress theme](https://davidyeiser.com/tutorial/docker-wordpress-theme-setup).

## Requirements

* Docker (Last update)
* Docker Compose
* Ubuntu, Linux mint, etc.

## Installation
Before installing add your user the group www-data and reboot.
````
sudo usermod -a -G www-data username
````

Then clone the project: 
````
git clone https://github.com/Cloweling/wordpress-compose-starter.git
cd docker-compose-starter
````

Install and run service (This is only done once, unless you uninstall it)
````
make install
````

To go Wordpress 
````
http://localhost:8000/
````

Run service
````
make start
````

Stop service
````
make stop
````

Restart and leave the project clean (Be careful because it removes the themes)
````
make uninstall
````
## FQA
How to allow using the uploads folder?
````
cd wp-content && mkdir uploads
sudo chown www-data:www-data uploads
sudo chmod 775 uploads
````