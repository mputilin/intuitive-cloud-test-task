## Building Images and Running Containers
### To build the Docker image using the following command:

```shell
docker build -t intuitive-cloud-lab-docker-image .
```

### To run a container using the image and enable an interactive session with a TTY:
```shell
docker run -it intuitive-cloud-lab-docker-image
```
### To run a container in the background, you can use the -d or --detach flag with the `docker run` command
```shell
docker run -d intuitive-cloud-lab-docker-image
```

## Uploading Images
### To upload a Docker image to Docker Hub, you need to follow these steps:
### Sign in to Docker Hub:
```shell
docker login
```
### Tag the image with your Docker Hub username and the desired repository name:
```shell
docker tag IMAGE_ID YOUR_USERNAME/REPOSITORY_NAME:TAG
```
### Once you have tagged the image, you can push it to Docker Hub:
```shell
docker push YOUR_USERNAME/REPOSITORY_NAME:TAG
```

## Screenshots
### List ALL containers:
![List ALL containers](./Screenshots/List%20ALL%20containers.png)
To list running containers only remove `-a` option
### List the docker images
![List the docker images](./Screenshots/List%20the%20docker%20images.png)

