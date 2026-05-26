
## Distribution of Z
X <- 10
y <- 5
z = x - 4 * y


# Binomial

#Values
prob <- 1/10
size <- 5

# Exactly taget
target1 <- 1

# =< target
target2 <-10

dbinom(target1,size,prob)
pbinom(target2,size,prob)


#Poission
#Values
rate <- 2

# Exactly target
target1 <- 3

# =< target
target2 <- 1

dpois(target1,rate)
ppois(target2,rate)

# Exponential distribution

#Values
ratepara <- 150

#>= target
target1 <- 50

#<= target
target2 <- 10

exp(-target1/ratepara)
pexp(10,1/ratepara)

# Normal Distribution
mean <- 70
sd <- 10

#> value
target1 <- 85

#P(target2 < X =< target3)
target2 <- 60
target3 <- 80

1-pnorm(target1,mean,sd)

pnorm(target3,mean,sd)-pnorm(target2,mean,sd)

# Correct Distrutiob/COnfiendence interval/df
size <- 10
mean <- 50
sd <- 5
conf_level <- 0.95

df <- size-1
t_crit <- qt(1 - (1 - conf_level)/2, df)
se <- sd / sqrt(size)
me <- t_crit * se

lower <- mean - me
upper <- mean + me
c(lower,upper)

#Approximate Slope -----
x <- c(1, 2, 3, 4, 5) 
y <- c(2, 4, 5, 4, 5) 
model <- lm(y ~ x) 

#Extract SLope
cf <- coef(model)
print(cf)



# Predict Value from Model

#Data
x <- c(1, 2, 3, 4,5) 
y <- c(2, 4, 5, 4, 5) 
model <- lm(y ~ x) 

target <- 1

new_data <- data.frame(x = target)
predict(model, new_data)


# Compute Residual Sum of Squares (RSS)
e <- c(1,-1,2,-2)
sum(e^2)


##Predictiob vs Confience intervals

# Random data
x <- 1:10
y <- 2*x + rnorm(10, 0, 2)
model <- lm(y ~ x)
newdata <- data.frame(x = 5)

predict(model, newdata, interval = "confidence")
predict(model, newdata, interval = "prediction")





x <- c(10, 10.5, 3.5, 9.7, 5.5)
n <- length(x)
mu0 <- 10
# Compute the test statistic
tobs <- (mean(x) - mu0) / (sd(x)/sqrt(n))
print(tobs)



