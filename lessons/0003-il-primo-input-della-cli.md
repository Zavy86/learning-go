# Lezione 3 — Il primo input della CLI

> Durata: 15 minuti · Progetto: quiz CLI

## Obiettivo verificabile

Fare in modo che il quiz saluti il nome ricevuto dal terminale.

Esempio desiderato:

```sh
go run ./quiz Ada
```

deve stampare:

```text
Ciao, Ada! Benvenuto nel quiz!
```

## Due idee, non di più

- Il package standard `os` espone gli argomenti della riga di comando in `os.Args`.
- `os.Args` è una slice di stringhe: la posizione `0` è il nome (o percorso) del programma; il primo valore scritto dall'utente è quindi alla posizione `1`.

```text
go run ./quiz Ada
              └── os.Args[1] == "Ada"
```

Per ora supponiamo sempre che il nome sia presente. Gestire correttamente il caso senza argomento sarà il prossimo piccolo miglioramento.

## Il tuo esercizio

In `quiz/main.go`:

1. importa anche `os`;
2. leggi il primo argomento passato dall'utente;
3. stampa esattamente `Ciao, <nome>! Benvenuto nel quiz!`, sostituendo `<nome>` con l'argomento.

Verifica con:

```sh
go fmt ./quiz
go run ./quiz Ada
```

### Indizio

Per inserire un valore dentro una frase, guarda `fmt.Printf`: il segnaposto per una stringa è `%s`, mentre `\n` va a capo. Il primo argomento dell'utente è `os.Args[1]`.

### Se ti blocchi

Non cercare ancora di gestire l'assenza dell'argomento: concentrati su import, indice `1` e stampa formattata. Incolla qui il tuo tentativo o l'errore e lo rivediamo insieme.

## Controllo

L'esecuzione con `Ada` deve terminare senza errori e produrre una sola riga, identica all'esempio. Prova poi un altro nome a tua scelta: il saluto deve cambiare di conseguenza.

## Consulta in *Learning Go*

Parole chiave: **command-line arguments**, **os.Args**, **slices**, **zero-based indexing**, **fmt.Printf**, **format verbs**, **imports**.
