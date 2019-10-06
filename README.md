## Build

```
: make help
target                         help
------                         ----
help                           Show this help.
ocaml-build                    ocaml build
ocaml-run                      ocaml run
python-run                     python run
cpp-build                      cpp build
cpp-run                        cpp run
rust-build                     rust build
rust-run                       rust run
```

## Time it

- Turns out `make $command` eats up a lot of time
- Had to run it with the direct executables themselves

|   	    | Real (s)  |
|---	    |---	|
| Cpp  	    | 0.007 |
| Ocaml  	| 0.007 |
| Rust  	| 0.007 |
| Python  	| 0.059 |

```
: time ./Ocaml/a.out 1000 > /dev/null

real	0m0.007s
user	0m0.003s
sys	0m0.003s
```

```
: time ./Cpp/a.out 1000 > /dev/null

real	0m0.007s
user	0m0.003s
sys	0m0.003s
```

```
: time ./Rust/fizz/target/debug/fizz 1000 > /dev/null

real	0m0.007s
user	0m0.003s
sys	0m0.003s
```

```
: time python Python/main.py --number 1000 > /dev/null

real	0m0.059s
user	0m0.039s
sys	0m0.014s
```