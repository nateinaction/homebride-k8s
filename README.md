# Homebridge for Kubernetes

## How to deploy:

Build and publish the image to a registry.

```shell
make docker-push
```

Copy the latest image digest SHA into `config/deployment.yaml` then deploy to kubernetes.
```shell
make deploy
```
