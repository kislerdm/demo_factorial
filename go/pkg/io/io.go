package io

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// Input reads user's input from stdin as int.
func Input() (int, error) {
	r := bufio.NewReader(os.Stdin)
	iStr, _ := r.ReadString('\n')
	iStr = strings.Trim(iStr, "\n")
	return strconv.Atoi(iStr)
}

// Output outputs results to user.
func Output(s string) {
	fmt.Printf("%s\n", s)
}
