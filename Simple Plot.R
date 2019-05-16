# Using ggplot to plot lines

source('Create Data.R')
source('Modelling.R')

# Redoes linear regression within plotting here
g0 <- ggplot(data = df, aes(x = x, y = y))
g0 + geom_point() + stat_smooth(method = "lm", col = "red") + theme_bw()
