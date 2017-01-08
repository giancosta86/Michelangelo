# Basic Markdown gallery

H1 in Markdown corresponds to a \LaTeX section!

Use a blank line to separate paragraphs. Within your text, you can employ both **bold** and *italic* styles, as well as `citations` and other markdown features - as long as they are correctly supported by Pandoc. In case of doubt, try using your desired syntax construct, run **build.sh** and - if there are no compilation errors - check the actual quality of the produced PDF document.

## Subsections are mapped, too

Quite naturally, H2 corresponds to subsections. Usually, H4 and later might be fairly heavyweight - but they should be correctly translated to LaTeX, too!


# Links

You can add clickable links! Quite simply, with [Markdown syntax](https://daringfireball.net/projects/markdown/syntax)!


# Lists

Of course, you can add as many sections as you need - just add more H1s!


## Bulleted lists

They should have at least 2 items:

* This is the first item

* This is the second item

    * If you add 4 leading spaces, you can also create sublists...

    * ...and they introduce no additional complexity!

* Then, you can continue writing the main list


## Numbered lists

They should have at least 2 items as well:

1. You can use the very same number for every item

1. Such number will be the first number in the list


### Images

Of course, images are supported, too - with standard Markdown syntax!

![Embedding images is definitely easy](images/example.png)


# LaTeX

Should you need all the features provided by \LaTeX, you can employ any \LaTeX command - for example, citations \cite{TWOBINPACKSITE} - as Markdown files are ultimately converted into LaTeX source files.
