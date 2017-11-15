## ------------------------------------------------------------------------
x <- c(1,2,3)
mean(x)

## ----Tab2, echo = FALSE, results = "asis", message = FALSE---------------
library(xtable)
options(xtable.comment = FALSE)
xtable(head(mtcars[,1:3]), caption = "Eine krasse Tabelle", label = "tab:Tab2")


## ----fig1, echo = TRUE, fig.cap = "Example of a figure", out.width = "50%"----
knitr::include_graphics("../docs/picture2.png")

