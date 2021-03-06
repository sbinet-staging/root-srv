## build environment
FROM golang:latest
WORKDIR /go/src/github.com/sbinet-staging/root-srv
RUN go get -v -d go-hep.org/x/hep/rootio/cmd/root-srv/server
COPY main.go .
RUN go get -v .

## runtime environment
FROM scratch

WORKDIR /usr/bin
COPY --from=0 /go/bin/linux_amd64/root-srv .
EXPOSE 8080
ENTRYPOINT ["/usr/bin/root-srv", "-addr", ":8080"]
