#!/bin/sh

typst compile --font-path ./fonts "labelgen.typ"
convert -density 300 "labelgen.pdf" -background white -flatten -alpha off "labelgen.png"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
mkdir -p .log
cp "labelgen.png" ".log/$TIMESTAMP.png"
