# Basic script 
# Creates unrelated data
library(tidyverse)

n <- 30

df <- data.frame(id = 1:n)

df$y <- rnorm(n, 10, 1)
df$x <- rnorm(n, 5, 1)
df$e <- rnorm(n, 0, 0.25)

# Sort from smallest to largest x
df <- df %>%
  arrange(x)
