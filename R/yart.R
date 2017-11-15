#' LaTeX Report format template YART
#'
#' A format suitable for reports such as academic papers (thesis)
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex A boolean toggle to select whether intermediate
#' LaTeX files are to be kept, defaults to \code{FALSE}
#' @return R Markdown output format to pass to
#' \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#' \dontrun{
#' rmarkdown::draft("my_report.Rmd", template = "pdf", package = "yart")
#' rmarkdown::render("my_report.Rmd")
#' }
#'
#' @section Report features:
#' Various aspects of the report can be customized by setting the following
#' variables in the document metadata:
#'
#' \describe{
#'   \item{\code{title}}{Title of the report, colon is permitted}
#'   \item{\code{subtitle}}{Subtitle}
#'   \item{\code{author}}{Author}
#'   \item{\code{date}}{Date}
#'   \item{\code{logo}}{logo (image) file, png format preferred}
#'   \item{\code{field}}{Field such as "Psychology", "Marketing", "Consumer Contact"}
#'   \item{\code{lang}}{LaTeX language support, eg., "de-De"}
#'   \item{\code{lof}}{List of Figures, Boolean: TRUE or FALSE}
#'   \item{\code{lot}}{List of Tables, Boolean: TRUE or FALSE}
#'   \item{\code{toc}}{Table of Contents, Boolean: TRUE or FALSE}
#'   \item{\code{course}}{Name of course, eg., "Introduction to Making Things Right"}
#'   \item{\code{referee}}{Referee, professor, supervisor}
#'   \item{\code{street}}{Author street}
#'   \item{\code{zipcity}}{Author zip code and city}
#'   \item{\code{street}}{Author street}
#' }
#'
#' The vignette source shows several of these options in use.
#'
#' @seealso
#' \code{\link[pinp]{pinp}}
#' \code{\link[linl]{linl}}
#' \code{\link[tint]{tint}}
#' @references
#' JJ Allaire, R Foundation, Hadley Wickham, Journal of Statistical Software, Yihui Xie, Ramnath
#' Vaidyanathan, Association for Computing Machinery, Carl Boettiger, Elsevier, Karl Broman,
#' Kirill Mueller, Bastiaan Quast, Randall Pruim, Ben Marwick, Charlotte Wickham, Oliver Keyes
#' and Miao Yu (2017). rticles: Article Formats for R Markdown. R package version 0.4.1.
#' \url{https://CRAN.R-project.org/package=rticles}
#'
#' JJ Allaire, Joe Cheng, Yihui Xie, Jonathan McPherson, Winston Chang, Jeff Allen, Hadley
#' Wickham, Aron Atkins, Rob Hyndman and Ruben Arslan (2017). rmarkdown: Dynamic Documents for R.
#' R package version 1.6. \url{https://CRAN.R-project.org/package=rmarkdown}
#'
#' Yihui Xie (2017). knitr: A General-Purpose Package for Dynamic Report Generation in R. R
#' package version 1.17.
#'
#' Aaron Wolen (2017). pandoc-letter. GitHub Repository. \url{https://github.com/aaronwolen/pandoc-letter}.
#'
#'  Dirk Eddelbuettel and Aaron Wolen (2017). linl: 'linl' is not 'Letter'. R package version 0.0.2. \url{https://CRAN.R-project.org/package=linl}
#'
#'
#'
lyartinl <- function(..., keep_tex = FALSE) {

  template <- system.file("rmarkdown", "templates", "pdf", "resources", "template.tex",
                          package = "yart")
  base <- inherit_pdf_document(..., template = template, keep_tex = keep_tex)

  base$knitr$opts_chunk$prompt <- FALSE 	# changed from TRUE
  base$knitr$opts_chunk$comment <- '# '	# default to one hashmark
  base$knitr$opts_chunk$highlight <- TRUE  	# changed as well

  base
}


# Call rmarkdown::pdf_documet and mark the return value as inheriting pdf_document
inherit_pdf_document <- function(...) {
  fmt <- rmarkdown::pdf_document(...)
  fmt$inherits <- "pdf_document"
  fmt
}

knitr_fun <- function(name) utils::getFromNamespace(name, 'knitr')

output_asis <- knitr_fun('output_asis')
