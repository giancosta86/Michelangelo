# Michelangelo

*Docker image for hybrid Markdown-LaTeX document editing*


## Introduction

Michelangelo is a hybrid Markdown-LaTeX template for *creating a book* - or any other document - using **Markdown files** that can transparently include LaTeX commands: it is a generalization of the Thesis which I created on [TwoBinPack](http://gianlucacosta.info/TwoBinPack/) - my MSc project in Computer Engineering.

Michelangelo is both simple and effective:

* you can write most of the document as simple *Markdown* content. You can also (and should) partition it into multiple Markdown files - one per chapter

* you should be able to include *any* LaTeX command in your Markdown source


Therefore, Markdown is employed as a quick and expressive shortcut syntax for LaTeX - a sort of effective *syntactic sugar*.


## Features

* Starting from version 2.0, Michelangelo is *a Docker image*, providing an extensible set of LaTeX and PDF tools out of the box! ^\_\_^

* The **michelangelo** script can be added to the PATH and creates *an ad-hoc container* working on a **doc** directory in the current directory of the host system (which maps to **/doc** in the container)

* Within the container a few commands can be invoked:

    * **docInit**: adds all the files of a sample book to the **/doc** directory

    * **docBuild**: creates the PDF file (**Document.pdf**) within **/doc/build**

    * **nano**: with syntax highlighting, enables editing when using a command-line host OS. Otherwise, one can visually edit the document files using any GUI editor

    * **tlmgr**: can download and install additional LaTeX packages

* If the *cover.pdf* file is available in the **doc** directory, it will be prepended to the document generated by LaTeX


## Usage

In order to correctly employ Michelangelo, please refer to its [wiki](https://github.com/giancosta86/Michelangelo/wiki).


## [Third-party licenses](LICENSES.md)


## Further references

* [Markdown](https://daringfireball.net/projects/markdown/)

* [LaTeX](https://www.latex-project.org/)
