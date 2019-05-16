# Basic script 
# Creates unrelated data
library(tidyverse)

n <- 30
b0 <- 5
b1 <- 0.25

df <- data.frame(id = 1:n)

df <- df %>%
  mutate(x = rnorm(n, 5, 1),
         z = rnorm(n, 5, 1),
         e = rnorm(n, 0, 0.25),
         y = b0 + b1* z + e) %>%
# Sort from smallest to largest x
  arrange(x)

