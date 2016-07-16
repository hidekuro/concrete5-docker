# concrete5-docker

concrete5 on nginx with docker-compose

## Requirements

- [docker](https://docs.docker.com/engine/installation/)
- [docker-compose](https://docs.docker.com/compose/install/)

## Getting Started

Clone this repository.

```bash
git clone https://github.com/hidekuro/concrete5-docker.git c5
```

Run containers using docker-compose

```bash
cd c5
docker-compose up -d
```

Now, you can access to `http://your-docker-machine-ip/`

### TIPS

Recommends clone into short name directory such as `c5`.
It is useful to containers name shorten.


## Compose services description

| service name | description |
|------|--------------|
| c5 | data-volume-container of concrete5 sources. provides volume `/var/www/concrete5` |
| db | MySQL 5.6 container. provides MySQL datadir `/var/lib/mysql` |
| web | Nginx container. references volumes from `concrete5` and `php`. |
| php | PHP 7 fpm container. provides fpm socket `/var/run/php-fpm/php-fpm.sock` |

## LICENSE

The MIT License.
