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
docker-compose up --build -d
```

Now, you can access to `http://your-docker-machine-ip/`

### TIPS

Recommends clone into short name directory such as `c5`.
It is useful to containers name shorten.


## Compose services description

| service name | description |
|------|--------------|
| app | provides `/var/run/php-fpm/php-fpm.sock` and Concrete5 sources in `/var/www/concrete5`. |
| db | MySQL 5.6 service. provides MySQL datadir `/var/lib/mysql` |
| web | Nginx service. |

## Remove ALL Services and Volumes

```bash
docker-compose down
docker rmi c5_app c5_db c5_web
docker volume rm $(docker volume ls -qf dangling=true)
```

## LICENSE

The MIT License.
