# Echo

## Build

```
go build -o echo .
```

## Container Images

The following container image is available:

```
gcr.io/hightowerlabs/echo:1.0.0
```

The `echo` container image can be built using docker or [container builder](https://cloud.google.com/container-builder):
gcloud container builds submit --config cloudbuild.yaml .
