package main

import (
	"fmt"

	goperformancealchemy "github.com/guo66688/go-performance-alchemy/internal/app/go_performance_alchemy"
)

func main() {
	fmt.Println("go-performance-alchemy starting…")
	app := goperformancealchemy.New()
	_ = app
	fmt.Println("go-performance-alchemy ready.")
}
