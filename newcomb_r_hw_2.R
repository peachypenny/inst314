# USING DPLYR
library(dplyr)

# READING FILE
getwd()
setwd("C:/Users/pnewc/Documents/inst 311")
getwd()
readfile <- read.csv('R_hw1_dataset_96.csv')
class(readfile)

#PART ONE
#QUESTION ONE
nrow(readfile)
length(readfile$Temperature.F)

#QUESTION TWO
mean_temp <- mean(readfile$Temperature.F.)
print(mean_temp)

#QUESTION THREE
sd_value <- sd(readfile$Temperature.F.)
print(sd_value)

#QUESTION FOUR
max_value <- max(readfile$Temperature.F.)
print(max_value)

#QUESTION FIVE
min_value <- min(readfile$Temperature.F.)
print(min_value)

#PART TWO
#QUESTION SIX
high_z_score <- (max_value - mean_temp)/sd_value
print(high_z_score)

#QUESTION SEVEN
low_z_score <- (min_value - mean_temp)/sd_value
print(low_z_score)

#PART THREE
#QUESTION EIGHT
amt_minus_sd <- sum(readfile$Temperature.F. > mean_temp - sd_value)
amt_plus_sd <- sum(readfile$Temperature.F. > mean_temp + sd_value)
print(amt_minus_sd)
print(amt_plus_sd)

#QUESTION NINE
within_one_sd <- readfile[readfile$Temperature.F >= (mean_temp - sd_value) & readfile$Temperature.F <= (mean_temp + sd_value)]
prop_within_sd <- nrow(within_one_sd) / nrow(readfile)
print(prop_within_sd)

#QUESTION TEN
#Getting error that the 'prop_within_2sd' and 'find_2sd'are not found. Not sure what is wrong.
upper <- mean_temp + (2 * sd_value)
lower <- mean_temp - (2 * sd_value)

find_2sd <- readfile[readfile$Temperature.F >= lower & readfile$Temperature.F <= upper]
prop_within_2sd <- nrow(find_2sd) / nrow(readfile)
print(prop_within_2sd)
