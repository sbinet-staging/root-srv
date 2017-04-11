from golang:alpine

RUN apk add --no-cache git && \
	apk add --no-cache mercurial

ADD . /go/src/github.com/sbinet-staging/root-srv
WORKDIR /go/src/github.com/sbinet-staging/root-srv

RUN echo "foo"
RUN go-wrapper download && \
	go-wrapper install

EXPOSE 8080

CMD /go/bin/root-srv
