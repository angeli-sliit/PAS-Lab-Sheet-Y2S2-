getwd()
setwd("C:\\Users\\angel\\Desktop\\PAS LAB\\Lab02")
getwd()


data1 <- read.table("Data1.txt", header = TRUE, sep = ",")
View(data1)
str(data1)
summary(data1)
data1




data2<- read.csv("DATA 2.csv")
data2
summary(data2)





#Q1
# Coefficients
a <- 1
b <- -3
c <- 2

# Discriminant
D <- b^2 - 4*a*c

# Real roots
if (D >= 0) {
  root1 <- (-b + sqrt(D)) / (2*a)
  root2 <- (-b - sqrt(D)) / (2*a)
  cat("Roots:", root1, root2)
} else {
  cat("No real roots")
}




#Q3
x <- seq(1, 10, by=0.1)
par(mfrow = c(1, 2))  # Split window
plot(x, log(x), type="l", col="blue", main="log(x)")
plot(x, exp(x), type="l", col="red", main="exp(x)")




#Q4
K <- 20
v <- 1:K
sum(v %% 2 == 0)




#Q5
A <- c(1, 2, 5, 6)
B <- c(4, 5, 7)

common <- intersect(A, B)
if (length(common) == 0) {
  cat("Sets are disjoint")
} else {
  cat("Common elements:", common)
}




#Q6
v <- c(3, 7, 2, 9, 4)
max_index <- 1
for (i in 2:length(v)) {
  if (v[i] > v[max_index]) {
    max_index <- i
  }
}
max_index



#Q7
v <- c(3, 7, 2, 9, 4)
which.max(v)




#q8

compound_interest <- function(P, r, n) {
  return(P * (1 + r)^n)
}

P <- 5000
r <- 11.5 / 100

years <- 1:15
amounts <- compound_interest(P, r, years)
data.frame(Year = years, Amount = amounts)


data <- read.csv("Death Row.csv")
str(data)  # View structure and variables


