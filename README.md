[![Package-License](http://img.shields.io/badge/license-GPL--3-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-3.0.html)

## Yart: Yet another markdown report template

## Wha is Yart?

It would be useful to have a RMarkdown template for typical (academic) reports. The LaTeX class "report" provides a suitable format for that. This package provides a simple wrapper around this class built on the standard pandoc template.

This package leans on earlier work by [Aaron Wolen](http://aaronwolen.com/) in his
[pandoc-letter](https://github.com/aaronwolen/pandoc-letter) repository, and extends it for use from
R via the [rmarkdown](https://cran.r-project.org/package=rmarkdown) package. The structure of this package is heavily inspired by Dirk Eddenbuettel's nice tamplate package [linl](https://github.com/eddelbuettel/linl).


## Installation

Install via R from Github:

```r 
devtools::install_github("sebastiansauer/yart")
```


## Example

### Skeleton

The skeleton creates a very simple letter.

Several formatting defaults are in use. See `help(yart)` for a
complete list and default values.




### Vignette

The vignette example is a little more featureful and shows how to include a letterhead on-demand, a
signature, and a few formatting settings.


## Usage

Open as a Markdown template via RStudio, or use code such as

```r
library(rmarkdown)
draft("my_report.Rmd", template="pdf", package="yart", edit=FALSE)
render("my_report.Rmd")
```

to create a first draft of a new `my_report.Rmd`.    


## Author

Sebastian Sauer



## License

GPL-3 for this package, the work in [pandoc-letter](https://github.com/aaronwolen/pandoc-letter), 
as well as underlying Pandoc template.
