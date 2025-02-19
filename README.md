
# How to submit

<!-- badges: start -->
[![R-CMD-check](https://github.com/SwissStatsR/submit/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/SwissStatsR/submit/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

This page explains how to submit R packages and R projects to SwissStatsR.org.

## Phases of submission



## Submit an R package

Your R package should follow best practices. See "[R package (2e)](https://r-pkgs.org/)" free ebook.

The R package should have an open source license such as MIT, GPL or LGPL:

- `usethis::use_gpl3_license()`, `usethis::use_mit_license()`, etc. 

The R package should have an GitHub Action R-CMD-Check badge:

- `usethis::use_github_action()`

SwissStatsR hosts only R projects passing all R-CMD-Checks.

## Submit an R project

If you have R scripts related to Swiss statistics which could be useful to the 
R community, you can submit an GitHub repository containing R scripts.

### `DESCRIPTION` file

Your repository should contains metadata about your project in 
a `[DESCRIPTION](https://r-pkgs.org/description.html)` file. Even if your project 
is not an R package, this file helps us standardize metadata collection 
among all SwissStatsR projects.

You can create the `DESCRIPTION` file with:

``` r
usethis::use_description()
```

Then you should fill `DESCRIPTION` file. You can use utility functions as
helpers, such as:

- add authors: `usethis::use_author()`
- add license: `usethis::use_gpl3_license()`, `usethis::use_mit_license()`, etc.

We ask you to also add R package dependencies of your R project. As a
helper, you can use `usethis::use_package()`.

We strongly recommend you to use [renv](https://rstudio.github.io/renv/articles/renv.html) 
to track the dependencies of your R project.

``` r
renv::init()
```

### `.Rbuildignore` file

All files and folders (except R packages required folders and files, see above) 
should be listed in the `.Rbuildignore` file. For this you can use:

``` r
usethis::use_build_ignore()
```

If you R project contains R functions and tests, we recommend you to add them in 
the "R" and "tests" folder and follow [R package guidelines](https://r-pkgs.org/code.html).

### Checks

Even if your R project is not an R package, we ask you to add GitHub Actions 
R-CMD-Check to check if your `DESCRIPTIONS` and `.Rbuildignore` files are
correctly filled. For this, please use `usethis::use_github_action(name = "check-standard")`

You can locally check your R project R-CMD-Check results with: `devtools::check()`.

SwissStatsR hosts only R projects passing all R-CMD-Checks.
