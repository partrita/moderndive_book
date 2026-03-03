# Common setup for all chapters

# Version information
version <- "1.1.0"
date <- "2020년 7월 2일"
latest_release_version <- "1.1.0"
latest_release_date <- "2020년 7월 2일"
dev_version <- FALSE

library(knitr)
library(ggplot2)
library(dplyr)
library(tidyr)
library(stringr)
library(purrr)
library(glue)
library(kableExtra)
library(moderndive)
library(scales)

# Explicitly list packages for colophon etc.
needed_CRAN_pkgs <- c(
  "dygraphs", "fivethirtyeight", "gapminder", "ggplot2movies", "infer", "ISLR", 
  "janitor", "knitr", "moderndive", "nycflights13", "scales", "tidyverse", 
  "broom",
  "devtools", "ggrepel", "here", "kableExtra", "mvtnorm", "patchwork", 
  "remotes", "rmarkdown", "sessioninfo", "viridis", "webshot"
)

needed_pkgs <- unique(c(
  needed_CRAN_pkgs, "skimr", "bookdown"
))

# Set output options
if (knitr::is_html_output()) {
  options(width = 80)
}
if (knitr::is_latex_output()) {
  options(width = 75)
}
options(digits = 7, knitr.kable.NA = "NA")

knitr::opts_chunk$set(
  tidy = FALSE,
  out.width = "\\textwidth",
  fig.align = "center",
  comment = NA
)

# Custom functions used in the book
include_image <- function(path,
                          html_opts = "width=45%",
                          latex_opts = html_opts,
                          alt_text = "") {
  if (knitr::is_html_output()) {
    glue::glue("![{alt_text}]({path}){{ {html_opts} }}")
  } else if (knitr::is_latex_output()) {
    glue::glue("![{alt_text}]({path}){{ {latex_opts} }}")
  }
}

image_link <- function(path,
                       link,
                       html_opts = "height: 200px;",
                       latex_opts = "width=0.2\\textwidth",
                       alt_text = "",
                       centering = TRUE) {
  if (knitr::is_html_output()) {
    if (centering) {
      glue::glue(
        '<center><a target="_blank" class="page-link" href="{link}"><img src="{path}" style="{html_opts}"/></a></center>'
      )
    } else {
      glue::glue(
        '<a target="_blank" class="page-link" href="{link}"><img src="{path}" style="{html_opts}"/></a>'
      )
    }
  }
  else if (knitr::is_latex_output()) {
    if (centering) {
      glue::glue("\\begin{{center}}
        \\href{{{link}}}{{\\includegraphics[{latex_opts}]{{{path}}}}}
        \\end{{center}}")
    } else {
      glue::glue("\\href{{{link}}}{{\\includegraphics[{latex_opts}]{{{path}}}}}")
    }
  }
}

generate_r_file_link <- function(file) {
  if (knitr::is_latex_output()) {
    cat(glue::glue("이 장에서 사용된 모든 R 코드의 R 스크립트 파일은 <https://www.moderndive.com/scripts/{file}>에서 이용 가능합니다."))
  } else {
    cat(glue::glue("이 장에서 사용된 모든 R 코드의 R 스크립트 파일은 [여기](scripts/{file})에서 이용 가능합니다."))
  }
}

# Index citation helper (used in some chapters)
index_cite <- function(pkg, fun) {
  # This is typically used for index entries in LaTeX/PDF output.
  # In HTML, it usually returns nothing or the function name.
  return("")
}

# Set ggplot2 theme
if (knitr::is_latex_output()) {
  theme_set(theme_light())
} else {
  theme_set(theme_grey())
}

# To get kable tables to print nicely in .tex file
if (knitr::is_latex_output()) {
  options(kableExtra.auto_format = FALSE, knitr.table.format = "latex")
}
