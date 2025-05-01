
#   p=92% = 0.92
#   n=44


#Q1

#i - binomial

#ii
dbinom(40, size = 44, prob = 0.92)

#iii
pbinom(35, size = 44, prob = 0.92)

#iv
1 - pbinom(37, size = 44, prob = 0.92)

#v
pbinom(42, size = 44, prob = 0.92) - pbinom(39, size = 44, prob = 0.92)








#Q2

#avg= 4.5
# poisson

#i
dpois(6, lambda = 4.5)

#ii
1-ppois(6, lambda = 4.5)





#Q3

#i
pexp(3, rate = 0.5)

#ii
1 - pexp(4, rate = 0.5)


#iii
pexp(4, rate = 0.5) - pexp(2, rate = 0.5)





#Q4

# mean= 36.8
# sd  =  0.4  

#i
1 - pnorm(37.9, mean = 36.8, sd = 0.4)

#ii
pnorm(36.9, mean = 36.8, sd = 0.4) - pnorm(36.4, mean = 36.8, sd = 0.4)

#iii
qnorm(0.012, mean = 36.8, sd = 0.4)


#iv
qnorm(0.01, mean = 36.8, sd = 0.4, lower.tail = FALSE)
















































