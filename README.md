This repository contains a Dockerfile to create a Docker image that is able to run, thanks to Docker-in-docker, a [Drupal Boilerplate](https://github.com/Metadrop/drupal-boilerplate).


## Run it

Use the following command to run the container and mount the boilerplate inside the container:

```docker run -d -it --privileged --name devtest --mount type=bind,source=<path to a boilerplate root folder>,target=/<path inside container where to mount the boilerplate> <image id>```

