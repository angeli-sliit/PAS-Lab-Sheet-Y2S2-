getwd()
setwd("C:\\Users\\angel\\Desktop\\PAS LAB\\Lab04")
getwd()


#Q1
data1<- read.table("DATA 4.txt", header=TRUE, sep=" ")
data1

names(data1)<-c("Team Name","Team Attendance","Team Salary","Years")




#Q2
#a
boxplot(data1$`Team Attendance`, main="Attendance", horizontal = TRUE)
boxplot(data1$`Team Salary`, main="Salary", horizontal = TRUE)
boxplot(data1$`Years`, main="Years", horizontal = TRUE)

hist(data1$`Team Attendance`, main = "Histogram of Attendance", col = "skyblue", xlab = "Attendance")
hist(data1$`Team Salary`,col = "red")
hist(data1$Years,col = "green")


stem(data1$`Team Attendance`)
stem(data1$`Team Salary`)
stem(data1$Years)



#b

mean(data1$`Team Attendance`)
median(data1$`Team Attendance`)
sd(data1$`Team Attendance`)

mean(data1$`Team Salary`)
median(data1$`Team Salary`)
sd(data1$`Team Salary`)

mean(data1$`Years`)
median(data1$`Years`)
sd(data1$`Years`)

#c
summary(data1$`Team Attendance`)
summary(data1$`Team Salary`)
summary(data1$`Years`)

#d
IQR(data1$`Team Attendance`)
IQR(data1$`Team Salary`)
IQR(data1$`Years`)




#Q3
func <- function(x){
  ux<-unique(x)
  freq<-tabulate(match(x,ux))
  mode<-ux[freq == max(freq)]
  return(mode)
}

print(func(data1$Years))


#Q4

findOutliers <- function(x) {
  q1 <- quantile(x, 0.25, na.rm = TRUE)
  q3 <- quantile(x, 0.75, na.rm = TRUE)
  iqr <- q3 - q1
  lower_bound <- q1 - 1.5 * iqr
  upper_bound <- q3 + 1.5 * iqr
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_years <- findOutliers(data1$Years)
outliers_age <- findOutliers(data1$`Team Attendance`)
outliers_income <- findOutliers(data1$`Team Salary`)

print(outliers_years)
print(outliers_age)
print(outliers_income)































