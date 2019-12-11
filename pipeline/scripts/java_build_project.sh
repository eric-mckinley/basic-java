#!/bin/bash
echo "Java build via mvn docker image"
docker run --rm --name maven-project-type -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.6.3-jdk-8-slim mvn clean package