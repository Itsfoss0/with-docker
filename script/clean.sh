#!/usr/bin/env bash
# script to clean all containers and the nginx
# image from the docker deamon
#
docker system prune -f && docker rmi nginx:alpine
