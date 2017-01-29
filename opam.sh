#!/bin/sh

opam init -a
opam update
opam switch 4.02.3
opam install utop
opam install reason
