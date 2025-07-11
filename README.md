
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tarflow.iquizoo

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![tarflow.iquizoo status
badge](https://iquizoo.r-universe.dev/badges/tarflow.iquizoo)](https://iquizoo.r-universe.dev/tarflow.iquizoo)
[![R-CMD-check](https://github.com/iquizoo/tarflow.iquizoo/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/iquizoo/tarflow.iquizoo/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/iquizoo/tarflow.iquizoo/graph/badge.svg)](https://app.codecov.io/gh/iquizoo/tarflow.iquizoo)
<!-- badges: end -->

The goal of tarflow.iquizoo is to provide workflow auto-generation for
IQUIZOO data powered by [targets](https://github.com/ropensci/targets)
package.

## Background

The preprocessing of IQUIZOO data used to be very laborious because the
datasets were very disorganized. Newer version of database and games
make things much better. Now there is a package called
[preproc.iquizoo](https://github.com/iquizoo/preproc.iquizoo),
containing all the required functions used in preprocessing. It
facilitates analysis significantly. For now, with the advent of
[targets](https://docs.ropensci.org/targets/), we can easily setup
workflows to automate all the preprocessing! This is what this package
does. Hopefully, it will make the analysis of IQUIZOO data a favorable
thing.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("iquizoo/tarflow.iquizoo@develop")
```

Or you can install the stable version from [iquizoo’s
R-universe](https://iquizoo.r-universe.dev/) with:

``` r
install.packages("tarflow.iquizoo", repos = c(getOption("repos"), "https://iquizoo.r-universe.dev"))
```

## Usage

This simplest way to use this package is to call
`tarflow.iquizoo::use_targets_pipeline()` to generate a
{[targets](https://docs.ropensci.org/targets/)} pipeline. After some
basic parameters edit (follow the generated script), then you can run
the pipeline by executing `targets::tar_make()` in R console. The
pipeline will be executed in parallel by default.

## Code of Conduct

Please note that the tarflow.iquizoo project is released with a
[Contributor Code of
Conduct](https://iquizoo.github.io/tarflow.iquizoo/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms
