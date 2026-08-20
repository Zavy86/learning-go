# Lesson 3 — Your first CLI input

> Duration: 15 minutes · Project: CLI quiz

## Verifiable objective

Make the quiz greet the name received from the terminal.

Expected example:

```sh
go run ./quiz Ada
```

must print:

```text
Hello, Ada! Welcome to the quiz!
```

## Just two ideas

- The standard `os` package exposes command-line arguments in `os.Args`.
- `os.Args` is a slice of strings: position `0` is the program name (or path), so the first value written by the user is at position `1`.

```text
go run ./quiz Ada
              └── os.Args[1] == "Ada"
```

For now, assume the name is always present. Correctly handling a missing argument is the next small improvement.

## Your exercise

In `quiz/main.go`:

1. also import `os`;
2. read the first argument passed by the user;
3. print exactly `Hello, <name>! Welcome to the quiz!`, replacing `<name>` with the argument.

Verify with:

```sh
go fmt ./quiz
go run ./quiz Ada
```

### Hint

To insert a value into a sentence, look at `fmt.Printf`: `%s` is the placeholder for a string, while `\n` adds a line break. The user's first argument is `os.Args[1]`.

### If you get stuck

Do not handle a missing argument yet: focus on the import, index `1`, and formatted output. Paste your attempt or error here and we will review it together.

## Check

Running with `Ada` must finish without errors and produce one line identical to the example. Then try another name of your choice: the greeting should change accordingly.

## Look up in *Learning Go*

Keywords: **command-line arguments**, **os.Args**, **slices**, **zero-based indexing**, **fmt.Printf**, **format verbs**, **imports**.
