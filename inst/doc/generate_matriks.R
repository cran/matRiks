## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  echo = FALSE,
  eval = TRUE, 
  fig.align = 'center'
)
devtools::load_all()

## ----echo = FALSE, fig.align='center'-----------------------------------------
m1 <- mat_apply(cof(square(), pentagon(), hexagon()), 
                hrules = "shape", vrules = "shape")

m2 <- mat_apply(pacman(), hrules = "rotate", vrules = "rotate")

m3 <- mat_apply(size(malta(), 3), hrules = "shade")

m <- com(m1, m2, m3)
draw(m)

## ----echo = FALSE, echo = FALSE, fig.align='center'---------------------------
resp_m <- response_list(m)
draw(resp_m, main = TRUE)


## ----echo = FALSE-------------------------------------------------------------
m1 <- mat_apply(cof(square(), pentagon(), hexagon()), 
                hrules = "shape", vrules = "shape")
draw(m1)

## ----echo = FALSE-------------------------------------------------------------
dist_m1 <- response_list(m1)
draw(dist_m1, main = TRUE)

## -----------------------------------------------------------------------------
draw(dist_m1, distractors = c("correct", "r_top", "wp_copy"))

## ----echo = FALSE-------------------------------------------------------------
m1 <- mat_apply(cof(square(), pentagon(), hexagon()), 
                hrules = "shape", vrules = "shape")

m2 <- mat_apply(pacman(), hrules = "rotate", vrules = "rotate")

m3 <- mat_apply(size(malta(), 3), hrules = "shade")

m <- com(m1, m2, m3)
draw(m)

## ----echo = FALSE-------------------------------------------------------------
dist_m <- response_list(m, seed = 123)
draw(dist_m, main = TRUE)

## -----------------------------------------------------------------------------
draw(dist_m, distractors = c("correct", "r_top", "r_diag",  
                             "wp_copy", "wp_matrix", "ic_inc", "ic_flip", 
                             "ic_neg"))

