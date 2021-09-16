import 'dart:io';
import 'dart:convert';

// factorial calculates factorial given not negative int input.
int factorial(int n) {
    if (n < 2) {
        return 1;
    }
    return n * factorial(n - 1);
}

// readStdin reads user's input from stdin as int.
int readStdin() {
    var iStr = stdin.readLineSync();
    if (iStr != null) {
        return int.parse(iStr);
    }
}

// cycle performs an execution cycle.
void cycle() {
    print('input int');
    // var i = 4;
    // print('factorial of ${i} is ${factorial(i)}');
    print(readStdin());
}

// main is the program entrypoint.
void main() {
  while (true) {
      cycle();
  }
}
