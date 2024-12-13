cd ..

sudo apt install opam

opam init

opam switch create nqcc2-env 5.2.0

opam install core ppx_jane ocamlbuild ocamlfind menhir

opam install ocaml-lsp-server ocamlformat

eval $(opam env)

make

./main.native < test01/t01.c

./testc test


Notes:
- https://compiler-explorer.com/z/vdsEc7Wj6