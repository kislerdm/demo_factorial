use std::io;
use std::num::ParseIntError;
use std::io::prelude::*;

// factorial calculates factorial given not negative int input.
fn factorial(n: i64) -> i64 {
	if n < 2 {
		return 1
	}
	n * factorial(n-1)
}

// read_stdin reads user's input from stdin as int.
fn read_stdin() -> Result<i64, ParseIntError> {
    let stdin = io::stdin();
    loop {
      for line in stdin.lock().lines() {
        let input = line.expect("Failed to read line");
        return input.trim().parse::<i64>();
      }
    }
}

// cycleStep performs an execution cycle.
fn cycleStep() {
    println!("input int");
    match read_stdin() {
        Ok(n) => if n < 0 {
            println!("input must be not negative");
        } else {
            println!("factorial of {} is {}", n, factorial(n))
        },
        Err(_) => println!("unprocessable input, it must be an int")
    }
}

// main is the program entrypoint.
fn main() {
    loop {
        cycleStep();
    }
}
