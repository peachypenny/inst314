# USING DPLYR
library(dplyr)

#PART ONE
#QUESTION ONE
qnorm(0.09)

#QUESTION TWO
qnorm(0.93)

#QUESTION THREE
qnorm(0.97)

#QUESTION FOUR
qnorm(0.96)

#QUESTION FIVE
pnorm(1.7)

#QUESTION SIX 
#lowertail is false b/c we need right
pnorm(2.1, lower.tail = FALSE)

#QUESTION SEVEN
pnorm(-1.7)

#QUESTION EIGHT
pnorm(-1.3) + (1 - pnorm(1.3))

#PART TWO
#set degrees of freedom to equal 15
df <- 15

#QUESTION ONE
qt(0.09, df)

#QUESTION TWO
qt(0.93, df, lower.tail = FALSE)

#QUESTION THREE
# above, below, then middle
t_value <- qt(0.97, df, lower.tail = FALSE)
t_value <- abs(t_value)
print(t_value)

#QUESTION FOUR
t_value <- qt(0.04, df)
t_value <- abs(t_value)
qt(0.04, df, lower.tail = FALSE)

#QUESTION FIVE
pt(1.7, df)

#QUESTION SIX
pt(2.1, df, lower.tail = FALSE)

#QUESTION SEVEN
pt(-1.7, df)

#QUESTION EIGHT
pt(-1.3, df) + pt(1.3, df)

#PART THREE
#QUESTION ONE
qt(0.09, 1500-1)

#QUESTION TWO
1- pt(2.1, 1500-1)

#PART FOUR
# READING FILE
getwd()
setwd("C:/Users/pnewc/Documents/inst 311")
getwd()
readfile <- read.csv('R_hw1_dataset_96.csv')
class(readfile)

#QUESTION ONE
mean_temp <- mean(readfile$Temperature.F.)
print(mean_temp)

#QUESTION TWO
sample_temp_mean <- mean(head(readfile$Temperature.F., 20))
print(sample_temp_mean)

#QUESTION THREE
n <- 20
t_value <- qt(0.975, n-1)
stand_error <- sd(head(readfile$Temperature.F., n)) / sqrt(n)
con_int <- c(sample_temp_mean- t_value * stand_error, sample_temp_mean +t_value * stand_error)
print(con_int)

#QUESTION FOUR
t_value <- qt(0.005, n-1)
con_int <- c(sample_temp_mean- t_value * stand_error, sample_temp_mean +t_value * stand_error)
print(con_int)

#QUESTION FIVE
t_value <- qt(0.95, n-1)
con_int <- c(sample_temp_mean- t_value * stand_error, sample_temp_mean +t_value * stand_error)
print(con_int)

#QUESTION SIX
sample_temp_mean <- mean(head(readfile$Temperature.F., 200))
print(sample_temp_mean)

#QUESTION SEVEN
n <- 200
t_value <- qt(0.975, n-1)
stand_error <- sd(head(readfile$Temperature.F., n))
con_int <- c(sample_temp_mean- t_value * stand_error, sample_temp_mean +t_value * stand_error)
print(con_int)
