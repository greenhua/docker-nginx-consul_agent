docker kill nginx
docker rm nginx
docker build -t test2 .
docker run -d --name nginx test2
docker exec -it nginx bash