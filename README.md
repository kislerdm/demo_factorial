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

|Language|Codebase|Tooling|Documentation|Package Development|Testing|How easy to start|How easy to deploy|
|-|-|-|-|-|-|-|-|
|[golang](https://golang.org/)|[code](./go/main.go)|10|10, great official documentation and [go playground](https://play.golang.org/)|Straight-forward process to design [app modules](https://go.dev/blog/using-go-modules)|`Go` development motivates to employ `TDD` since the go tooling includes [`go test`](https://golang.org/doc/tutorial/add-a-test) application.|Depending on the language one uses on daily basis, it may take to get used to the fact that `go` is very versatile/simple language and doesn't come with much high level functions|Great compiler, it's very easy to compile and deploy as binary, even using [`scratch` docker image](https://hub.docker.com/_/scratch).|
|[rust](https://www.rust-lang.org/)|[code](./rust/main.rs)|10|10|||Depending on the language one uses on daily basis, it may take to get used to the fact that `rust` is designed for system programming and doesn't come with gc and high-level functions|Great compiler, it's very easy to compile and deploy as binary.|
|[C++](https://www.cplusplus.com/)|[code](./cpp/main.cpp)|8, ambiguity of compilers, lack of cross-platform compilation|10, dozens years worth of documentation and examples|||`c` was an inspiration and foundation for many languages from the list including `c++` which is likely to be the first language many engineers learn when it comes to computer programming. it is difficult to judge, but given many examples and an extensive documentation, it's a rather straight-forward to start developing in `c++`.|Not so easy, bearing in mind that even compiled program would require clib and potentially other dynamic, or static c libs to be present in process hosting OS.|
|[java](https://www.java.com/)|[code](./java/main.java)|-|-|-|-|-|-|
|[kotlin](https://kotlinlang.org/)|[code](./kotlin/main.kt)|-|-|-|-|-|-|
|[python3](https://www.python.org/)|[code](./py/main.py)|-|-|-|-|-|-|
|[ruby](https://www.ruby-lang.org/en/)|[code](./ruby/main.rb)|-|-|-|-|-|-|
|[javascript](https://www.javascript.com/)|[code](./js/main.js)|-|-|-|-|-|-|
|[php](https://www.php.net/)|[code](./php/main.php)|-|-|-|-|-|-|
