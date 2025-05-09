#Question 1a
#Given data
n <- 5     #number of independent repetitions
pi <- 0.05 #probability of success in each repetition (which is 5%)
x <- 0:n #number of success (which is either 0, 1, ..... 5)

#Compute p(x=k) using choose function
p <- choose(n,x)*(pi^x)*((1-pi)^(n-x)) #formula: probability mass function of a binomial
cat("Corresponding probabilities for x: 0, 1, 2, 3, 4, 5 at 5%\n")
print (p) #displays probability
#plot
plot(x, p)


#Question 1b
pi2 <- 0.10 #assigning new probability of success
x2 <- 0:n #number of success at set probability
#Use binomial function
p2 <- dbinom(x2, size=n, prob=pi2)
cat("\nCorresponding probabilities for x: 0, 1, 2, 3, 4, 5 at 10%\n")
print (p2) #displays probability 
#Plot using red crosses
plot(x2, p2, pch=4, col="red")


#Question 1c
#Expected value when pi is 0.05
expected_value <- n*pi
cat("\n Expected value when pi is 0.05 is: \n")
print(expected_value) #display expected value

#Question 1d
#Expected value at x<=1
p_atmost_1 <- sum(dbinom(0:1, size=n, prob=pi)) #sum from 0 to 1
cat("\n Probability of at most 1 non responder \n")
print (p_atmost_1)
#Expected value at x>=1
p_atleast_1 <- 1 - p_atmost_1
cat("\n Probability of at least 1 non responder \n")
print (p_atleast_1)


#Question 2
#density
y <- seq(160, 210)
mean <- 183
mu <- mean
variance <- 36
SD <- sqrt(variance)
sigma <- SD
density<-dnorm(y, mean=mu, sd=sigma)
#plot
plot(y, density)

#Question 2b
p_atmost_189 <- pnorm(189, mean=mu, sd=sigma)
cat("\n Atmost height of 189cm: \n")
print(p_atmost_189)

#Question 2c
p_192 <- pnorm(192, mean=mu, sd=sigma)
p_184.5 <- pnorm(184.5, mean=mu, sd=sigma)
p_between_184.5_192 <- p_192 -p_184.5
cat("\n Between 184.5cm and 192cm: \n")
print (p_between_184.5_192)

