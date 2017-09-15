Docker image with Nginx and php-fpm with configurable document root, front controller, and timezone

* based on phusion/baseimage:0.9.13
* php 5.5.9
* php-fpm
* nginx


# Build Docker image

```
docker build -t my-php-nginx github.com/maxivak/docker-image-php-nginx-559.git
```


* or clone it and build locally

```
git clone https://github.com/maxivak/docker-image-php-nginx-559.git
cd docker-image-php-nginx
docker build -t my-php-nginx .
```

# Run container

* copy your PHP site to folder on host machine `/path/to/site/`

* run container
```
docker run -d --name my-php -v /path/to/site/:/var/www/html -p 8080:80 my-php-nginx /sbin/my_init
```

# Services

* nginx
* nginx is running as root

* php-fpm
* php-fpm is running as root



# Settings
