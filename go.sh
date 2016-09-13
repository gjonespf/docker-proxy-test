#!/bin/bash
docker-compose stop devops-consul-main
docker-compose rm -f --all devops-consul-main

docker-compose up -d
docker-compose logs -f proxy-test

