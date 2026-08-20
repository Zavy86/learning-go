.PHONY: help run fmt vet test build

help:
	@printf '%s\n' 'Target disponibili:' \
		'  make run    - esegue il quiz' \
		'  make fmt    - formatta il codice Go' \
		"  make vet    - esegue l'analisi statica standard" \
		'  make test   - esegue tutti i test' \
		'  make build  - crea bin/quiz'

run:
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

