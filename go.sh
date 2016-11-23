#!/bin/bash
docker pull gavinjonespf/docker-git2consul

#Update this file if you need to override any environs
touch .env.local

docker-compose stop devops-consul-main
docker-compose rm -f --all devops-consul-main

docker-compose stop proxy
docker-compose rm -f --all proxy

docker-compose pull
docker-compose up -d
docker-compose logs -f proxy devops-consul-main devops-git2consul-main

