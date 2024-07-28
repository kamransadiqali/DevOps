![Docker](https://github.com/user-attachments/assets/1adaca84-de52-43a8-b1b7-649fab5e8628)

> [!NOTE]
> **Docker** *is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers. The service has both free and premium tiers. The software that hosts the containers is called Docker Engine. It was first released in 2013 and is developed by Docker, Inc.*

## Running a Docker container
```
docker run ubuntu /bin/echo ‘Hello world’
```
‘Docker run’ runs a container. This command uses a ubuntu image to run a container and executes the echo command inside the container. If the ubuntu image is not available from the local Docker host it will be pulled from the public DockerHub registry.
```
docker run -it ubuntu /bin/bash
```
Like before, this runs a container from a ubuntu image. The ‘-i’ makes an interactive connection using the standard input of the container. The ‘-t’ assigns a terminal inside the new container. ‘/bin/bash’ launches bash inside the container.
Exiting the container will stop it. Run the container in the background as a daemon to keep it running:
```
docker run -d ubuntu /bin/sh -c “while true; do echo hello world; sleep 1; done”
```
Looking at running containers:
```
docker ps
```
Check the Docker logs:
```
docker logs <container_name>
```
Stop the container:
```
docker stop <container_name>
```
Looking at all containers:
```
docker ps -a
```
Looking at all images:
```
docker images
```
Pull an existing image:
```
docker pull nginx/nginx
```
Updating and committing images:
```
docker run -t -i nginx/nginx /bin/bash
```
Run a container, install stuff, then commit the changes.
```
root@<containerId>$ apt-get install -y nginx
root@<containerId>$ gem2.0 install json
root@<containerId>$ exit
docker commit -m "Added json gem" -a "Stuart Reed" <containerId> nginx/nginx:v2
docker run -t -i nginx/nginx:v2 /bin/bash
```
This is painful. Make it easier with Dockerfiles!

## The Dockerfile
A set of instructions that build up a Docker image.
```
# This is a comment
FROM ubuntu:14.04
MAINTAINER Stuart Reed <reedsa@example.com>
RUN apt-get update && apt-get install -y nginx
RUN gem install tree
```
Build the image with docker build:
```
docker build -t nginx/nginx:v2 .
```
Run the container for the new image:
```
docker run -t -i nginx/nginx:v2 /bin/bash
```
Tag the image:
```
docker tag <imageId> nginx/nginx:devel
```
Push to DockerHub:
```
docker push nginx/nginx
```
Remove an image:
```
docker rmi nginx/nginx
```
## Data Volumes
Data that is saved during a container's execution is destroyed when the container exits. Volumes are special directories in containers that are separate from the Union File System that can persist or share data. Also supports mounting shared storage such as NFS.
Create a data volume inside a container
```
docker run -d -P --name web -v /webapp training/webapp python app.py
```
Find the volume on the host by listing the 'source' path
```
docker inspect webapp
```
Mount a host directory as a data volume
```
docker run -d -P --name web -v /src/webapp:/webapp training/webapp python app.py
```
## Docker Compose
Run multiple Docker containers simultaneously. Can link containers together and run dependencies in a specific order.





























