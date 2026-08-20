# Lesson 2 — From source to binary

> Duration: 15 minutes · Project: CLI quiz

## Verifiable objective

Compile the quiz into an executable file and run it without using `go run`.

## Just two ideas

- `go run ./quiz` is convenient during development: it compiles and immediately runs the package. The temporary binary does not remain in the project.
- `go build -o bin/quiz ./quiz` instead compiles a persistent binary: `bin/quiz`. You could later distribute it or run it without compiling in the same command.

The source code does not change between the two cases: the way you transform and execute it changes.

```text
quiz/main.go  --go run-->    immediate execution
quiz/main.go  --go build-->  bin/quiz  --> later execution
```

## Your exercise

From the repository root, run these commands in order:

```sh
make build
./bin/quiz
```

### Hint

On macOS and Linux, `./` means “run the file located in this directory.” Without `./`, the shell searches only the directories listed in `PATH`.

## Check

Both commands must finish without errors; the second one must print exactly:

```text
Welcome to the quiz!
```

To compare the two flows, also run `make run`: the output is the same, but only `make build` leaves `bin/quiz` in the repository.

## Optional exploration

Without changing files, try:

```sh
file bin/quiz
```

Read the first part of the output: it should identify a Mach-O executable for Apple Silicon.

## Look up in *Learning Go*

Keywords: **go run**, **go build**, **compiler**, **executable**, **binary**, **PATH**, **cross compilation**.

The next step will make the quiz respond to a command-line argument with `os.Args`.
