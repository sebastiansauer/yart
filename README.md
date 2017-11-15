[![Package-License](http://img.shields.io/badge/license-GPL--3-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-3.0.html)

## Yart: Yet another markdown report template

## Wha is Yart?

It would be useful to have a RMarkdown template for typical (academic) reports such as class assigments and bachelor/master thesises. The LaTeX class "report" provides a suitable format for that. This package provides a simple wrapper around this class built on the standard pandoc template.

This package leans on earlier work by [Aaron Wolen](http://aaronwolen.com/) in his
[pandoc-letter](https://github.com/aaronwolen/pandoc-letter) repository, and extends it for use from
R via the [rmarkdown](https://cran.r-project.org/package=rmarkdown) package. The structure of this package is heavily inspired by Dirk Eddenbuettel's nice tamplate package [linl](https://github.com/eddelbuettel/linl).


The following screenshot shows on the left hand side the raw markdown file and on the right hand side the compiled pdf paper.

![](https://raw.githubusercontent.com/sebastiansauer/yart/master/docs/yart_screenshot.png)


## Features

Being built on Pandoc, yart provides the typical features of Pandoc's Markdown, inculding citation, figures, tables and references thereto -- and basically, via a template, the fully featured LaTeX beauty. Being built on RMarkdown/knitr, R can be knitted into the text document.

The specific addon of this template is that it configurates a LaTeX template suitable for (academic) reports so that the user does not have to deal with the LaTeX pecularities and can focus on writing/contents. There are a number of levers which can be adapted by the used in the yart template including author name, title, subtitle, address, date, referee's name, assignment name, school's name, due date.



## Installation

Install via R from Github:

```r 
devtools::install_github("sebastiansauer/yart")
```


>    LaTeX needs to be installed.

## Example

### Skeleton

The skeleton creates a very simple letter.

Several formatting defaults are in use. See `help(yart)` for a
complete list and default values.




### Vignette

The vignette example is a little more featureful and shows how to include a letterhead on-demand, a
signature, and a few formatting settings.


## Usage

First, open as a Markdown template via RStudio via *File > New File > RMarkdown > From Template > YART*. The template list or Rmarkdown should feature the YART template upon the package installation:


![](https://raw.githubusercontent.com/sebastiansauer/yart/master/docs/yart_template_rstudio.png)


Second, "knit" to document to pdf:

![](https://raw.githubusercontent.com/sebastiansauer/yart/master/docs/knit_to_yart.png)


or use code such as

```r
library(rmarkdown)
draft("my_report.Rmd", template="pdf", package="yart", edit=FALSE)
render("my_report.Rmd")
```

to create a first draft of a new `my_report.Rmd`.    


## Demo video

[![Demo video](https://raw.githubusercontent.com/sebastiansauer/yart/master/docs/video_thumbnail.png)](https://www.youtube.com/watch?v=pGnOlXur_D4&feature=youtu.be)


## Bugs, Feedback, Issues

Please report issues [here](https://github.com/sebastiansauer/yart/issues) along with a reproducible example if possible.


## Related work

A number of R packages for RMarkdown templates for PDF documents are available including

- [linl](https://github.com/cran/linl)
- [pinp](http://dirk.eddelbuettel.com/code/pinp.html)
- [rticles](http://dirk.eddelbuettel.com/code/pinp.html)
- [tint](https://cran.r-project.org/web/packages/tint/index.html)


## Author

Sebastian Sauer



## License

GPL-3 for this package, the work in [pandoc-letter](https://github.com/aaronwolen/pandoc-letter), 
as well as underlying Pandoc template.
