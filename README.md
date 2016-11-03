# NGINX-FPM

Example of composing docker containers with NGINX and PHP FastCgi with unixODBC Driver Manager

### Build images
``` bash
cd ./nginx-fpm
docker build -t buildok/fpm ./fpm
docker build -t buildok/nginx ./nginx
```

### Run
``` bash
docker-compose up
```