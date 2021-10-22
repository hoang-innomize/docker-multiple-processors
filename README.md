# Run multiple processes with Docker

Build docker

```sh
docker build -t supervisord-test .         
```

Run docker

```sh
docker run -p 8379:8379 -p 5000:5000 -t -i supervisord-test
```
