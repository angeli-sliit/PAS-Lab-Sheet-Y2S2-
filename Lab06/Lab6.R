getwd()
setwd("C://Users//angel//Desktop//PAS LAB//Lab06")
getwd()

data<-read.table("Forest.txt", sep=",", header=TRUE )
names(data)
data
View(data)
str(data)

fix(data)
attach(data)

fivenum(data$temp)

#Q2
str(data)

#Q3- 517
nrow(data)

#Q4
max(data$wind)
min(data$wind)

#Q5
summary(data$temp)


#Q6
boxplot(wind,horizontal=TRUE)


#Q7 - positive
boxplot(wind)

#Q8
median(data$temp)


#Q9
mean(data$wind)
sd(data$wind)
summary(data$wind)


#Q10
IQR(data$wind)
4.900-2.700



#Q11
table(data$day,data$month)


#Q12 - avg=mean
mean(data$temp[month=="sep"])

#Q13
count <- table(day[month == "jul"])
count
names(count[count == max(count)])






































