# Reference 0001 — Module, `main`, and commands

## Module

A Go project's unit of versioning and dependencies. The `go.mod` file declares its path.

## `package main`

The package that produces an executable program.

## `func main()`

The point where program execution starts.

## Minimum cycle

```sh
go mod init github.com/ACCOUNT/REPOSITORY
go run ./quiz
```

The module path is its future import path: when code lives in a repository, use the repository URL without `https://` or `.git`.

With `go.mod` at the root and `go run ./quiz`, you compile and run the package in the `quiz` directory. Use `go build` when you want to choose where the executable goes.

## Minimum program form

```go
package main

import "fmt"

func main() {
	fmt.Println("...")
}
```

The compiler requires every import to be genuinely used. `fmt.Println` prints one line to standard output.

## Sources

- [Official module tutorial](https://go.dev/doc/tutorial/create-module)
- [Go command reference](https://pkg.go.dev/cmd/go)
