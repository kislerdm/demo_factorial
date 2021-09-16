package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// factorial calculates factorial given not negative int input.
func factorial(n int) int {
	if n < 2 {
		return 1
	}
	return n * factorial(n-1)
}

// readStdin reads user's input from stdin as int.
func readStdin() (int, error) {
	r := bufio.NewReader(os.Stdin)
	iStr, _ := r.ReadString('\n')
	iStr = strings.Trim(iStr, "\n")
	return strconv.Atoi(iStr)
}

// cycle performs an execution cycle.
func cycle() {
	fmt.Println("input int")
	i, err := readStdin()
	if err != nil {
		fmt.Println("unprocessable input, it must be an int")
	} else {
		if i < 0 {
			fmt.Println("input must be not negative")
		} else {
			o := factorial(i)
			fmt.Printf("factorial of %d is %d\n", i, o)
		}
	}
}

// main is the program entrypoint.
func main() {
	for {
		cycle()
	}
}
