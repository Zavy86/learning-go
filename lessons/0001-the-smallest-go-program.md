# Lesson 1 — The smallest Go program

> Duration: 10 minutes · Project: CLI quiz

## Verifiable objective

Create the project module and make your quiz print a greeting in the terminal.

## Just two ideas

- `go.mod` identifies the **module**: it is the starting point for a project and its dependencies. It is not a perfect equivalent of `package.json`, but it plays a related role.
- `package main` and `func main()` make a directory an executable program. `main` is where execution starts.

## Your exercise

You chose a structure that fits this workspace:

```text
Go/
├── go.mod
├── quiz/
│   └── main.go
├── lessons/
└── reference/
```

1. From the repository root, initialise the module using the GitHub repository path, without `https://` or `.git`.
2. In `quiz/main.go`, use `package main`, import `fmt`, and define `func main()`.
3. Print exactly `Welcome to the quiz!`.
4. Run the program with `go run ./quiz`.

### Hint

To print one line, look in the `fmt` package for a function whose name ends in `ln`.

## Check

If the command finishes without errors and the phrase appears, you have the first executable version of the quiz. If an error appears, keep the command and output: we will read them together before looking for a complete solution.

## Automated development cycle

The repository includes a `Makefile` so you do not have to remember every command:

| Command | Effect |
| --- | --- |
| `make run` | runs the quiz |
| `make fmt` | formats the Go code |
| `make vet` | runs standard static analysis |
| `make test` | runs all tests |
| `make build` | creates `bin/quiz` |

## Look up in *Learning Go*

Keywords: **modules**, **package main**, **main function**, **go run**, **go build**, **go fmt**, **go vet**, **go test**, **Makefile**, **standard output**.

Primary source: [official Go tutorial: Create a Go module](https://go.dev/doc/tutorial/create-module). See also the [quick reference on modules, main, and commands](../reference/0001-module-main-and-commands.md).

Do you have a doubt or an error? Ask me about it: I will give you a hint first and, if needed, review your attempt with you.
