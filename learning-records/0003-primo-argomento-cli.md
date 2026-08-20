# Primo argomento della CLI

Lo Studente ha modificato personalmente il quiz per ricevere un nome dalla riga di comando tramite `os.Args[1]` e inserirlo nel saluto con `fmt.Printf`.

## Evidenza

Verificato il 2026-08-20 con:

```sh
go run ./quiz Ada
```

Output:

```text
Ciao, Ada! Benvenuto nel quiz!
```

Anche `go vet ./quiz` termina senza segnalazioni.

## Implicazioni

Lo Studente sa importare package della libreria standard, leggere il primo argomento CLI e usare un formato `%s`. Il miglioramento immediato sarà gestire il caso in cui il nome non venga passato e chiarire le differenze tra `fmt.Print`, `fmt.Println` e `fmt.Printf`.
