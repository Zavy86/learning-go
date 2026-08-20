package main

import "fmt"
import "os"

func main() {
	playerName := "Player"
	if len(os.Args) > 1 {
		playerName = os.Args[1]
	}
	fmt.Printf("Hello, %s! Welcome to the quiz!\n", playerName)
}
