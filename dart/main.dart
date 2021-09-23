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
    return 0;
}

// cycleStep performs an execution cycleStep.
void cycleStep() {
    print('input int');
    try {
        var i = readStdin();
        if (i < 0) {
            print('input must be not negative');
        } else {
            print('factorial of ${i} is ${factorial(i)}');
        }
    } catch(e) {
        print('unprocessable input, it must be an int');
    }
}

// main is the program entrypoint.
void main() {
  while (true) {
      cycleStep();
  }
}
