package goperformancealchemy

import "fmt"

func New() *App {
	fmt.Println("Creating a new go-performance-alchemy app...")
	return &App{}
}

type App struct{}
