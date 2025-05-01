getwd()
setwd("C:\\Users\\angel\\Desktop\\PAS LAB\\Lab03")
getwd()


#Q1
data1<-read.csv("DATA 3.csv", header=TRUE)
data1

names(data1)<- c("Age", "gender", "accommodation")
data1$gender <- factor( data1$gender,levels=1:2, labels=c("male","female"))
data1$accommodation <- factor(data1$accommodation,levels=1:3, labels=c("home", "boarded", "lodging"))

#Q2

mean(data1$Age)       
median(data1$Age)     
sd(data1$Age)        
summary(data1$Age)

table(data1$gender)  

table(data1$accommodation) 


#Q3
table(data1$gender, data1$accommodation)


#Q4
boxplot(Age ~ gender, data = data1, main = "Age by Gender", names = c("Male", "Female"))
boxplot(Age ~ accommodation, data = data1, main = "Age by Accommodation", names = c("Home", "Boarded", "Lodging"))

#Q5
tapply(data1$Age, list(Gender = data1$gender, Accommodation = data1$accommodation), mean)






