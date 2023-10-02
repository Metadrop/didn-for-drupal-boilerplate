This repository contains a Dockerfile to create a Docker image that is able to run, thanks to Docker-in-docker, a [Drupal Boilerplate](https://github.com/Metadrop/drupal-boilerplate).

## In Docker Hub

This image is in Docker Hub: https://hub.docker.com/repository/docker/metadrop/drupal-boilerplate-dind/

Image: metadrop/drupal-boilerplate-dind:<tag>

### Tags
 - v0.1: Initial release.

## Run it

Use the following command to run the container and mount the boilerplate inside the container:

```docker run -d -it --privileged --name devtest --mount type=bind,source=<path to a boilerplate root folder>,target=/<path inside container where to mount the boilerplate> metadrop/drupal-boilerplate-dind:<tag>```
