# nginx-echo-headers

A simple tool for debugging HTTP requests. nginx will return all request headers and body to the client.

For the Docker image, see https://hub.docker.com/r/brndnmtthws/nginx-echo-headers/

### Try running it like so:

```ShellSession
$ docker run -p 8080:8080 brndnmtthws/nginx-echo-headers
Unable to find image 'brndnmtthws/nginx-echo-headers:latest' locally
latest: Pulling from brndnmtthws/nginx-echo-headers
88286f41530e: Pull complete
7c2e0e2a8099: Pull complete
fe86df227e07: Pull complete
Digest: sha256:177eccf79ee22074a9285341ea61e0a7864023a0a40b115a693256984821328f
Status: Downloaded newer image for brndnmtthws/nginx-echo-headers:latest
2019/01/24 13:55:52 [notice] 1#1: using the "epoll" event method
2019/01/24 13:55:52 [notice] 1#1: openresty/1.11.2.5
2019/01/24 13:55:52 [notice] 1#1: built by gcc 6.3.0 (Alpine 6.3.0)
2019/01/24 13:55:52 [notice] 1#1: OS: Linux 4.9.125-linuxkit
2019/01/24 13:55:52 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
2019/01/24 13:55:52 [notice] 1#1: start worker processes
2019/01/24 13:55:52 [notice] 1#1: start worker process 7
2019/01/24 13:56:02 [info] 7#7: *1 client 172.17.0.1 closed keepalive connection
```

### Then test it (this example uses [httpie](https://httpie.org/)):

```ShellSession
$ http localhost:8080
HTTP/1.1 200 OK
Connection: keep-alive
Content-Type: text/plain
Date: Thu, 24 Jan 2019 13:56:02 GMT
Server: openresty/1.11.2.5
Transfer-Encoding: chunked

GET / HTTP/1.1
Host: localhost:8080
User-Agent: HTTPie/1.0.2
Accept-Encoding: gzip, deflate
Accept: */*
Connection: keep-alive
```

### Deploy in kubernetes clusters

```ShellSession
$ kubectl apply -f kubernetes-manifest.yaml
```