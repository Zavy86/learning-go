# Lezione 4 — Un argomento opzionale

> Durata: 15 minuti · Progetto: quiz CLI

## Obiettivo verificabile

Il quiz deve funzionare sia con un nome sia senza:

```sh
go run ./quiz Ada
# Ciao, Ada! Benvenuto nel quiz!

go run ./quiz
# Ciao, Giocatore! Benvenuto nel quiz!
```

## Due idee, non di più

- `len(os.Args)` restituisce il numero di elementi presenti nella slice. Senza nome vale `1`, perché c'è comunque `os.Args[0]`.
- Un'istruzione `if` esegue un blocco soltanto quando una condizione è vera. In questo caso puoi leggere `os.Args[1]` soltanto se la sua posizione esiste.

```text
nessun nome: len(os.Args) == 1  → usa "Giocatore"
con un nome: len(os.Args) > 1   → usa os.Args[1]
```

## Il tuo esercizio

Modifica `quiz/main.go` affinché:

1. il nome predefinito sia `Giocatore`;
2. se l'utente passa un nome, questo sostituisca il valore predefinito;
3. la stampa finale usi sempre la stessa variabile del nome.

Verifica entrambi i casi:

```sh
go fmt ./quiz
go run ./quiz
go run ./quiz Ada
```

### Indizio

Puoi assegnare prima `"Giocatore"` a una variabile locale, poi usare un `if` con la condizione `len(os.Args) > 1` per aggiornarla. In Go una variabile nuova dentro una funzione si dichiara con `:=`; per cambiarne il valore in seguito si usa `=`.

### Se ti blocchi

Non serve introdurre funzioni nuove né usare `else`: pensa a un valore iniziale che funziona già e a una sola eccezione che lo sostituisce.

## Controllo

- `go run ./quiz` non deve più generare panic.
- `go run ./quiz Ada` deve mantenere il saluto personalizzato.
- Entrambi i comandi devono stampare una riga terminata da un ritorno a capo.

## Consulta in *Learning Go*

Parole chiave: **if statement**, **boolean expressions**, **len**, **slices**, **short variable declaration**, **zero values**, **panic**.
