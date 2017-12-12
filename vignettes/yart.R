## ------------------------------------------------------------------------
x <- c(1,2,3)
mean(x)

## ----xtable-example, eval = FALSE----------------------------------------
#  data(mtcars)
#  
#  library(xtable)
#  print.xtable(
#    xtable(head(daten),
#           label="tab:daten",
#           caption="Datenstruktur für eine within-Analyse"),
#    comment=FALSE)

## ----fig1, echo = TRUE, fig.cap = "Example of a figure", out.width = "50%"----
#knitr::include_graphics("../docs/picture2.png")
plot(mtcars$hp)

