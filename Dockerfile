FROM golang:latest

RUN go get -v go-hep.org/x/hep/rootio/cmd/root-srv

ENTRYPOINT ["/go/bin/root-srv", "-addr", ":8080"]
