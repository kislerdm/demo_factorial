# Demo Application to calculate [Factorial](https://en.wikipedia.org/wiki/Factorial) in Various Programming Languages

## Program Objective

To calculate the [factorial](https://en.wikipedia.org/wiki/Factorial) value given the user's input from STDIN. The result is being output to STDOUT.

## How to Run

Run to see the list of options for programs executions (requires [GNU make](https://www.gnu.org/software/make/)):

```bash
make help
```

Run to run the programs ([docker]() is required):

```bash
make run LANG=##SPECIFY_THE_LANGUAGE##
```

For example, to run a golang program, run:

```bash
make run LANG=go
```

## List of Languages

|Language|Codebase|
|-|-|
|[golang](https://golang.org/)|[code](./go/main.go)|
|[C++](https://www.cplusplus.com/)|[code](./cpp/main.cpp)|
|[python3](https://www.python.org/)|[code](./py/main.py)|
|[ruby](https://www.ruby-lang.org/en/)|[code](./ruby/main.rb)|
|[javascript](https://www.javascript.com/)|[code](./js/main.js)|
