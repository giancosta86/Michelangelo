#!/bin/bash

set -e


function clean {
  rm -rf build
}


function convertMarkdown {
  for markdownFile in markdown/*.md
  do
    extensionlessFile="${markdownFile%%.*}"

    latexFile=build/${extensionlessFile##*/}.tex

    pandoc "${markdownFile}" -f "markdown-auto_identifiers" -t latex -o "${latexFile}"
  done
}


function compileLatex {
  compilePartialLatex

	drawSeparator

	compileBibtex

	drawSeparator

	compilePartialLatex

	drawSeparator

	compilePartialLatex
}


function copyLatexSources {
  mkdir build

  cp *.tex build
  cp *.bib build
}


function compilePartialLatex {
  pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build build/Document.tex
}


function compileBibtex {
  bibtex build/Document.aux
}


function drawSeparator {
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
}


function concatToTempArtifact {
  pdftk cover.pdf "build/Document.pdf" cat output build/Temp.pdf
}


function createFinalPdf {
  mv "build/Temp.pdf" "build/Document.pdf"
}


clean

copyLatexSources

convertMarkdown
compileLatex

concatToTempArtifact

createFinalPdf

echo
echo "OK! ^__^ Your document is --> build/Document.pdf"
echo
