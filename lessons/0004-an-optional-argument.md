# Lesson 4 — An optional argument

> Duration: 15 minutes · Project: CLI quiz

## Verifiable objective

The quiz must work both with and without a name:

```sh
go run ./quiz Ada
# Hello, Ada! Welcome to the quiz!

go run ./quiz
# Hello, Player! Welcome to the quiz!
```

## Just two ideas

- `len(os.Args)` returns the number of elements in the slice. Without a name, it is `1` because `os.Args[0]` is always present.
- An `if` statement runs a block only when a condition is true. Here, you can read `os.Args[1]` only if that position exists.

```text
no name:   len(os.Args) == 1  → use "Player"
with name: len(os.Args) > 1   → use os.Args[1]
```

## Your exercise

Modify `quiz/main.go` so that:

1. the default name is `Player`;
2. when the user passes a name, it replaces the default value;
3. the final output always uses the same name variable.

Verify both cases:

```sh
go fmt ./quiz
go run ./quiz
go run ./quiz Ada
```

### Hint

First assign `"Player"` to a local variable, then use an `if` with the condition `len(os.Args) > 1` to update it. In Go, use `:=` to declare a new variable inside a function and `=` to change its value later.

### If you get stuck

You do not need a new function or an `else`: think of an initial value that already works and one exception that replaces it.

## Check

- `go run ./quiz` must no longer panic.
- `go run ./quiz Ada` must preserve the personalised greeting.
- Both commands must print a line ending in a line break.

## Look up in *Learning Go*

Keywords: **if statement**, **boolean expressions**, **len**, **slices**, **short variable declaration**, **zero values**, **panic**.
