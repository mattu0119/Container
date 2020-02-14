# Docker Container

# Postgres Container
git clone 
cd Container/Postgres/
docker build -t postgres12 .
docker run --name postgres12.1 -e POSTGRES_PASSWORD=P@ssw0rd -d postgres12
docker exec -it postgres12.1 /bin/bash
