# Lezione 1 — Il più piccolo programma Go

> Durata: 10 minuti · Progetto: quiz CLI

## Obiettivo verificabile

Creare il modulo del progetto e far stampare al terminale un saluto dal tuo quiz.

## Due idee, non di più

- `go.mod` identifica il **modulo**: è il punto di partenza del progetto e delle sue dipendenze. Non è l'equivalente perfetto di `package.json`, ma svolge una parte affine del suo ruolo.
- `package main` e `func main()` rendono una cartella un programma eseguibile. `main` è il punto da cui parte l'esecuzione.

## Il tuo esercizio

Hai scelto una struttura adatta a questo workspace:

```text
Go/
├── go.mod
├── quiz/
│   └── main.go
├── lessons/
└── reference/
```

1. Dalla radice del repository, inizializza il modulo usando il percorso GitHub del repository, senza `https://` né `.git`.
2. In `quiz/main.go` usa `package main`, importa `fmt` e definisci `func main()`.
3. Stampa esattamente `Benvenuto nel quiz!`.
4. Esegui il programma con `go run ./quiz`.

### Indizio

Per stampare una riga, cerca nel package `fmt` una funzione il cui nome termina con `ln`.

## Controllo

Se il comando termina senza errori e appare la frase, hai il primo eseguibile del quiz. Se compare un errore, conserva comando e output: li leggeremo insieme prima di cercare una soluzione completa.

## Consulta in *Learning Go*

Parole chiave: **modules**, **package main**, **main function**, **go run**, **go build**, **fmt**, **standard output**.

Fonte primaria: [tutorial ufficiale Go: Create a Go module](https://go.dev/doc/tutorial/create-module). Vedi anche il [riferimento rapido su modulo, main e comandi](../reference/0001-modulo-main-e-comandi.html).

Hai un dubbio o un errore? Chiedimelo: ti darò prima un indizio e poi, se serve, rivedremo il tentativo insieme.
