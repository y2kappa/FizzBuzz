help:           ## Show this help.
	@IFS=$$'\n' ; \
    help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##/:/'`); \
    printf "%-30s %s\n" "target" "help" ; \
    printf "%-30s %s\n" "------" "----" ; \
    for help_line in $${help_lines[@]}; do \
        IFS=$$':' ; \
        help_split=($$help_line) ; \
        help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
        help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
        printf '\033[36m'; \
        printf "%-30s %s" $$help_command ; \
        printf '\033[0m'; \
        printf "%s\n" $$help_info; \
    done

ocaml-build: ## ocaml build
	ocamlc -o Ocaml/a.out Ocaml/fizzbuzz.ml
ocaml-run: ## ocaml run
	./Ocaml/a.out $(number)

python-run: ## python run
	python ./python/main.py --n $(number)

cpp-build: ## cpp build
	g++ --std=c++11 -o Cpp/a.out Cpp/main.cpp

cpp-run: ## cpp run
	./Cpp/a.out $(number)

rust-build: ## rust build
	cargo build --manifest-path Rust/fizz/Cargo.toml

rust-run: ## rust run
	./Rust/fizz/target/debug/fizz $(number)
