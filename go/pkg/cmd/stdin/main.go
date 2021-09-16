package main

import (
	_io "demo-factorial/io"
	"demo-factorial/processor"
	"fmt"
)

// cycle performs an execution cycle.
func cycle() {
	fmt.Println("input int")
	i, err := _io.Input()
	if err != nil {
		_io.Output("unprocessable input, it must be an int")
	} else {
		if i < 0 {
			_io.Output("input must be not negative")
		} else {
			o := processor.Factorial(i)
			_io.Output(fmt.Sprintf("factorial of %d is %d", i, o))
		}
	}
}

// main is the program entrypoint.
func main() {
	for {
		cycle()
	}
}
