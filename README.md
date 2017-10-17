# Echo

Echo echoes the body of an HTTP request to a Cloud Pub/Sub topic.

## Usage

Start the `echo` service:

```
./echo
```
```
2017/10/17 12:41:02 Starting echo service...
```

Submit an HTTP request to the `/pubsub` endpoint:

```
curl http://127.0.0.1:8080/pubsub -d 'Hello GCP!'
```

Retrieve the message from the configured topic:

```
gcloud beta pubsub subscriptions pull echo --auto-ack
```
```
┌───────────┬─────────────────┬────────────┐
│    DATA   │    MESSAGE_ID   │ ATTRIBUTES │
├───────────┼─────────────────┼────────────┤
│ Hello GCP │ 160709762709502 │            │
└───────────┴─────────────────┴────────────┘
```

> The echo service sends a trace to [Stackdriver](https://cloud.google.com/stackdriver) for every HTTP request.

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

```
gcloud container builds submit --config cloudbuild.yaml .
```
