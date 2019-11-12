#!/bin/bash
set -eux

docker build -t ykorzikowski/ambar-mongodb MongoDB
docker build -t ykorzikowski/ambar-frontend FrontEnd
docker build -t ykorzikowski/ambar-es ElasticSearch
docker build -t ykorzikowski/ambar-rabbit Rabbit
docker build -t ykorzikowski/ambar-redis Redis
docker build -t ykorzikowski/ambar-serviceapi ServiceApi
docker build -t ykorzikowski/ambar-webapi WebApi
docker build -t ykorzikowski/ambar-pipeline Pipeline
docker build -t ykorzikowski/ambar-local-crawler LocalCrawler
docker build -t ykorzikowski/ambar-pipeline Pipeline
