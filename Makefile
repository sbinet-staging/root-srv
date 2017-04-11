## simple makefile to log workflow
.PHONY: all test clean build install deploy

GOFLAGS ?= $(GOFLAGS:)

all: install test


build:
	@go build $(GOFLAGS) ./...

install:
	@go get $(GOFLAGS) ./...

gen:
	@go generate $(GOFLAGS) ./...

test: install
	@go test $(GOFLAGS) ./...

bench: install
	@go test -run=NONE -bench=. $(GOFLAGS) ./...

clean:
	@go clean $(GOFLAGS) -i ./...

deploy: build
	@docker build -t binet/root-srv .
	@docker push binet/root-srv
