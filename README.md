# Echo

## Build

```
go build -o echo .
```

### Container

```
gcloud container builds submit --config cloudbuild.yaml .
```

The following container image is available:

```
gcr.io/hightowerlabs/echo:1.0.0
```


