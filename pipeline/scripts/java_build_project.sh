#!/bin/bash
echo "Java build via mvn docker image"
docker run --rm --name maven-project-type -u 1000 -e MAVEN_CONFIG=/var/maven/.m2 -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.6.3-jdk-8-slim mvn -Duser.home=/var/maven clean package