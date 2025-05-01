getwd()
setwd("C:\\Users\\angel\\Desktop\\PAS LAB\\Lab05")
getwd()


data<- read.table("Data.txt", sep=",", header=TRUE)
names(data)<-c("Company", "Shareholders")
data

#Q1
hist(data$Shareholders)

#Q2
breaks <- seq(130, 270, length.out = 8)  # 7 classes = 8 break points
hist(data$Shareholders, breaks = breaks, main = "Histogram with 7 Classes", xlab = "Number of Shareholders", col = "orange", border = "black")


#Q3
# Create class intervals and frequency table
breaks <- seq(130, 270, length.out = 8)
freq_table <- cut(data$Shareholders, breaks = breaks, right = FALSE)
table(freq_table)


#Q4
# Get midpoints and frequencies
freq <- table(cut(data$Shareholders, breaks = breaks, right = FALSE))
mids <- (head(breaks, -1) + tail(breaks, -1)) / 2

plot(mids, freq, type = "o", main = "Frequency Polygon", xlab = "Shareholders", ylab = "Frequency", col = "blue")


#Q5
cum_freq <- cumsum(freq)
plot(breaks[-1], cum_freq, type = "o", main = "Less-than Cumulative Frequency Polygon", xlab = "Shareholders (Less than)", ylab = "Cumulative Frequency", col = "darkgreen")

#Q6
quantile(data$Shareholders, 0.75)
