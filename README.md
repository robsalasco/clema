
# Clema

A R small dictionary based lemmatizer with emphasis in chilean spanish.

# Installation

``` r
install.packages("devtools")
devtools::install_github("robsalasco/clema")
```

# Usage

``` r
library(clema)
clema(c("carabinera","autos","niñas"))
#> [1] "carabinero" "auto"       "niño"
```

# Copyright

This package uses the dictionary provided by Explosion AI’s spaCy and
all atributions belong their creators.
