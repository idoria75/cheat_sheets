# Useful Docker commands

## Compiling a Dockerfile

```bash
# Build image from dockerfile with a custom tag
docker build -t <image_tag> <path_to_dockerfile>
```

## Running docker containers

```bash
# Run bash from within container
docker run -it <image_tag> bash
```

## Removing docker objects

```bash
# Remove docker container
docker container rm <name/id>

# Remove docker volume
docker volume rm <name/id>

# List dangling images
docker images -f dangling=true

# Remove docker image
docker image rm <name/id>

# Remove dangling images
docker image prune
```
