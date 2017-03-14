#!/bin/bash

set -e # Exit immediately on error

cd "$(dirname "$0")"
rm -rf out
mkdir -p out/titlepic
pdflatex titlepic-manual.tex
cp README.md titlepic.sty titlepic-manual.tex titlepic-manual.pdf out/titlepic
cd out
zip -r titlepic.zip titlepic
