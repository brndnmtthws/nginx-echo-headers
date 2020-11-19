# nginx-echo-headers

A simple tool for debugging HTTP requests. nginx will return all request headers and body to the client.

For the Docker image, see https://hub.docker.com/r/corilus/nginx-echo-headers/

Try running it like so:

```ShellSession
$ docker run -p 8080:8080 corilus/nginx-echo-headers
```

Then test it (this example uses [httpie](https://httpie.org/)):

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
