# Using ggplot to plot lines

source('Modelling.R')

# Final model results
df.use <- data.frame(y = df$y, covar.use = lm.fin$model[,2])

# Redoes linear regression within plotting here
g0 <- ggplot(data = df.use, aes(x = covar.use, y = y))
g0 + geom_point() + 
  stat_smooth(method = "lm", col = "red") + 
  ggtitle('Final Regression Model') + 
  xlab(names(lm.fin$model)[2]) + 
  theme_bw()
