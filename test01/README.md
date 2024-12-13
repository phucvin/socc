cd ..

sudo apt install opam

opam init

opam install core

opam install menhir

opam install ocaml-lsp-server ocamlformat

eval $(opam env)

make

./main.native < test01/t01.c

./testc test