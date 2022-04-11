To create a new image make sure to delete old images and old containers:
    - to delete all (images and containers), make sure to stop running container and if you use an image will not deleted auto
    "docker system prune"
    - docker build .
    - docker run (-it || -d ) $name of images(id)
    - to enter to container who runs detach
    "docker exec -it $(name of container) bash || sh
