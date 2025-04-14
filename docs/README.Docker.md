## Docker

[README](../README.md)

### Prerequisites

1. Enable virtualization on your machine
2. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Building and running the application

The running configuration is defined in the `compose.yaml` file.

To run the application using Docker Compose, you can type in a terminal:
`docker compose up --build`.

The application will be available at http://localhost:8000.

### Deploying your application to the cloud

The building configuration is defined in the `docker-bake.hcl` file.

To push the image of your container to Docker Hub:
1. First you need to login in Docker Desktop.
2. Then you need to adapt the configuration file to your needs by changing tags to match the registry, image name and tag needed.
3. Finally you can build the images and push it to the registry by typing:
`docker buildx bake --push`
