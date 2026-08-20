# Lezione 2 — Dal sorgente al binario

> Durata: 15 minuti · Progetto: quiz CLI

## Obiettivo verificabile

Compilare il quiz in un file eseguibile e avviarlo senza usare `go run`.

## Due idee, non di più

- `go run ./quiz` è comodo durante lo sviluppo: compila ed esegue subito il package. Il binario temporaneo non resta nel progetto.
- `go build -o bin/quiz ./quiz` compila invece un binario persistente: `bin/quiz`. È ciò che potresti poi distribuire o avviare senza il compilatore nel comando.

Il codice sorgente non cambia tra i due casi: cambia il modo in cui lo trasformi ed esegui.

```text
quiz/main.go  --go run-->    esecuzione immediata
quiz/main.go  --go build-->  bin/quiz  --> esecuzione successiva
```

## Il tuo esercizio

Dalla radice del repository, esegui nell'ordine:

```sh
make build
./bin/quiz
```

### Indizio

Su macOS e Linux `./` significa: «esegui il file che si trova in questa cartella». Senza `./`, la shell cerca soltanto nelle cartelle elencate in `PATH`.

## Controllo

Entrambi i comandi devono terminare senza errori; il secondo deve stampare esattamente:

```text
Benvenuto nel quiz!
```

Se vuoi confrontare i due flussi, esegui anche `make run`: l'output è uguale, ma solo `make build` lascia `bin/quiz` nel repository.

## Piccola esplorazione facoltativa

Senza modificare file, prova:

```sh
file bin/quiz
```

Leggi la prima parte dell'output: dovrebbe identificare un eseguibile Mach-O per Apple Silicon.

## Consulta in *Learning Go*

Parole chiave: **go run**, **go build**, **compiler**, **executable**, **binary**, **PATH**, **cross compilation**.

Il prossimo passo sarà rendere il quiz sensibile a un argomento della riga di comando con `os.Args`.
