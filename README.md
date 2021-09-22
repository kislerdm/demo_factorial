# Demo Application to calculate [Factorial](https://en.wikipedia.org/wiki/Factorial) in Various Programming Languages

## Program Objective

To calculate the [factorial](https://en.wikipedia.org/wiki/Factorial) value given the user's input from STDIN. The result is being output to STDOUT.

## How to Run

Run to see the list of options for programs executions (requires [GNU make](https://www.gnu.org/software/make/)):

```bash
make help
```

Run to execute the programs ([docker](https://www.docker.com/) is required):

```bash
make run LANG=##SPECIFY_THE_LANGUAGE##
```

For example to execute a golang program, run:

```bash
make run LANG=go
```

## List of Languages

|Language|Codebase|[Stackoverflow Popularity](https://insights.stackoverflow.com/survey/2021#section-most-popular-technologies-programming-scripting-and-markup-languages) [%]|
|-|-|-:|
|[javascript](https://www.javascript.com/)|[code](./javascript/main.js)|64.96|
|[python](https://www.python.org/)|[code](./python/main.py)|48.24|
|[java](https://www.java.com/)|[code](./java/main.java)|35.35|
|[C++](https://www.cplusplus.com/)|[code](./cpp/main.cpp)|24.31|
|[php](https://www.php.net/)|[code](./php/main.php)|21.98|
|[go](https://golang.org/)|[code](./go/main.go)|9.55|
|[kotlin](https://kotlinlang.org/)|[code](./kotlin/main.kt)|8.32|
|[rust](https://www.rust-lang.org/)|[code](./rust/main.rs)|7.03|
|[ruby](https://www.ruby-lang.org/en/)|[code](./ruby/main.rb)|6.75|
|[dart](https://dart.dev/)|[code](./dart/main.dart)|6.02|
|[haskell](https://www.haskell.org/)|[code](./haskell/main.hs)|2.12|

## Lines of Code

Run to analyse LoC (requires [cloc](https://github.com/AlDanial/cloc)):

```bash
cloc . --exclude-lang=Dockerfile,make
```

```bash
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
C++                              1              5              4             48
Go                               1              5              4             39
PHP                              1              4              4             39
JavaScript                       1              5              4             38
Rust                             1              4              4             34
Dart                             1              4              4             33
Ruby                             1              4              4             32
Java                             1              5              4             28
Kotlin                           1              3              4             27
Python                           1             15             12             21
Haskell                          1              5              4             18
-------------------------------------------------------------------------------
SUM:                            11             59             52            357
-------------------------------------------------------------------------------
```

It can be noticed from the table, that `haskell` requires least amount of expressions/code to solve the problem, `C++` on the other hand, requires the most amount of code among all compares languages. The figure for `python` is another confirmation of why the language is so popular among the community members - it's very easy to express your solution in a few lines of code. And it's not only that, the expressions are very human-readable.
