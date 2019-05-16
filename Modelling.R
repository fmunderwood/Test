# Linear regression
# Uses data generated by process described in Create Data.R
 
source('Create Data.R')
 
 plot(y ~ x, data = df)
 lm1 <- lm(y ~ x, data = df)
 summary(lm1)
 
 lines(predict(lm1), col = 2)
 