# First CLI argument

The Student personally modified the quiz to receive a name from the command line through `os.Args[1]` and insert it into the greeting with `fmt.Printf`.

## Evidence

Verified on 2026-08-20 with:

```sh
go run ./quiz Ada
```

Output:

```text
Hello, Ada! Welcome to the quiz!
```

`go vet ./quiz` also finishes without findings.

## Implications

The Student can import standard-library packages, read the first CLI argument, and use a `%s` format verb. The immediate improvement is handling a missing name and clarifying the differences between `fmt.Print`, `fmt.Println`, and `fmt.Printf`.
