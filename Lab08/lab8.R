
getwd()
setwd("C:\\Users\\angel\\Desktop\\PAS LAB\\Lab08")
getwd()


data<-read.table("Data - Lab 8.txt", header=TRUE, sep=",")
data

#i
mean(data$Nicotine)     # population_mean
var(data$Nicotine)      # population_variance



#ii
set.seed(123)

sMean <- numeric(30)
sVar <- numeric(30)


for(i in 1:30){
  sample_i <- sample(data$Nicotine, size=5, replace = TRUE)
  sMean[i] <- mean(sample_i)
  sVar[i] <- var(sample_i)
}

data.frame(Sample = 1:30, Mean = sMean, Variance = sVar)



#iii
mean(sMean)
var(sMean)


#iv
mean(data$Nicotine) 
mean(s.means)


#v
var(data$Nicotine) 
var(s.means)





















