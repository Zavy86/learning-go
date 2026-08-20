# Compiling the quiz

The Student successfully compiled the quiz with `make build` and ran the binary produced in `bin/quiz`.

## Evidence

The `file bin/quiz` command, run on 2026-08-20, returned:

```text
bin/quiz: Mach-O 64-bit executable arm64
```

## Implications

The Student can distinguish immediate execution with `go run` from persistent compilation with `go build`. The next concept in the active task is command-line arguments with `os.Args`.
