# sponsorunited-pipelines-image
SponsorUnited API BitBucket Pipelines Docker image that has all the extensions preinstalled.

Make sure you are authenticated in GitHub as described here: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry
##Build image
`docker build -t e-spres-oh/sponsorunited-pipelines-image .`

##Tag image
Get the id by running `docker image ls` and look `e-spres-oh/sponsorunited-pipelines-image` and then:

`docker tag 6e3b93f24bd2 ghcr.io/e-spres-oh/sponsorunited-pipelines-image:1.0.0`

and

`docker tag 6e3b93f24bd2 ghcr.io/e-spres-oh/sponsorunited-pipelines-image:latest`

##Push image

`docker push ghcr.io/e-spres-oh/sponsorunited-pipelines-image:1.0.0`

and

`docker push ghcr.io/e-spres-oh/sponsorunited-pipelines-image:latest`

Note: Run `docker image prune -a` to remove any unused and dangling images.
