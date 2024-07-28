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
