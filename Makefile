.PHONY: help run fmt vet test build

help:
	@printf '%s\n' 'Available targets:' \
		'  make run    - runs for dev' \
		'  make fmt    - formats source code' \
		'  make vet    - runs static analysis' \
		'  make test   - runs all tests' \
		'  make build  - create executable'

run:
	clear
	go run ./quiz

fmt:
	go fmt ./...

vet:
	go vet ./...

test:
	go test ./...

build:
	mkdir -p bin
	go build -o bin/quiz ./quiz
