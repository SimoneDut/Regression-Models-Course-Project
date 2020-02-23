library(datasets)
library(ggplot2)
data(mtcars)

print(round(cor(mtcars),2))

# EXPLORATORY ANALYSIS PLOT AM, MT


# strategy 1
fit1 <- lm(mpg ~ am, data = mtcars)
fit2 <- lm(mpg ~ am + wt, data = mtcars)
fit3 <- lm(mpg ~ am + wt + hp, data = mtcars)
fit4 <- lm(mpg ~ am + wt + hp + cyl + disp, data = mtcars)
fit5 <- lm(mpg ~ am + wt + hp + cyl + disp + drat + vs, data = mtcars)
fit6 <- lm(mpg ~ ., data = mtcars)

anova(fit1, fit2, fit3, fit4, fit5, fit6)
summary(fit3)

fit3_b <- lm(mpg ~ wt + hp, data = mtcars)

fit7 <- lm(mpg ~ . - cyl, data = mtcars)
fit8 <- lm(mpg ~ . - cyl - vs, data = mtcars)
fit9 <- lm(mpg ~ . - cyl - vs - carb, data = mtcars)
fit10 <- lm(mpg ~ . - cyl - vs - carb - gear, data = mtcars)
fit11 <- lm(mpg ~ . - cyl - vs - carb - gear - drat, data = mtcars)
fit12 <- lm(mpg ~ . - cyl - vs - carb - gear - drat - disp, data = mtcars)
fit13 <- lm(mpg ~ . - cyl - vs - carb - gear - drat - disp - hp, data = mtcars)
fit14 <- lm(mpg ~ . - cyl - vs - carb - gear - drat - disp - hp - 1, data = mtcars)


