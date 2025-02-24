# some R scripts

library(dplyr)

# some data wrangling
starwars |>
  filter(height <= 70)
