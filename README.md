# SponsorUnited Pipelines Image Builder
SponsorUnited API BitBucket Pipelines Docker image that has all the extensions preinstalled.

## Authenticate to the Container Registry

Make sure you are authenticated in GitHub as described here: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry

```
export CR_PAT=YOUR_GITHUB_TOKEN
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
```

## Build image
```
docker build -t e-spres-oh/sponsorunited-pipelines-image .
```

## Tag image
Get the IMAGE_ID by executing `docker image ls` and search for `e-spres-oh/sponsorunited-pipelines-image` and then execute:

```
docker tag IMAGE_ID ghcr.io/e-spres-oh/sponsorunited-pipelines-image:X.X.X
docker tag IMAGE_ID ghcr.io/e-spres-oh/sponsorunited-pipelines-image:latest
```

## Push image

```
docker push ghcr.io/e-spres-oh/sponsorunited-pipelines-image:X.X.X
docker push ghcr.io/e-spres-oh/sponsorunited-pipelines-image:latest
```

Note: Run `docker image prune -a` to remove any unused and dangling images.
