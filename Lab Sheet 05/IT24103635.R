setwd("//Users//althafazad//Desktop//IT24103635 Lab 5")
getwd()

Delivery_Times<-read.table("Exercise - Lab 05.txt", header=TRUE)
head(Delivery_Times)
attach(Delivery_Times)


#02
breaks<-seq(20,70,by=(70-20)/9)
Delivery_Time_minutes <- c(12, 15, 20, 22, 25, 30, 30, 32, 40, 45, 50, 55, 60)

hist(Delivery_Time_minutes,
     main = "Delivery Time (Minutes)",
     breaks = 5,
     right = TRUE,
     xlab = "Minutes")

#04
freq_table <- hist(Delivery_Time_minutes,
                   right = TRUE)


cum_freq<-cumsum(freq_table$counts)

plot(freq_table$mids, cum_freq, type="o", main="Cumulative Frequency Polygon", xlab="Delivery Time", ylab="Cumulative Frequency")




