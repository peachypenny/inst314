# USING DPLYR
library(dplyr)

# READING FILE
getwd()
setwd("C:/Users/pnewc/Documents/inst 311")
getwd()
readfile <- read.csv('R_hw1_dataset_96.csv')
class(readfile)

# QUESTION ONE
county_counts <- table(readfile$County)
top_counties <- head(sort(county_counts, decreasing = TRUE), 2)
print(top_counties)

# QUESTION TWO
maryland_counties <- subset(readfile, State == 'MD')
counting_md_counties <- table(maryland_counties$County)
top_md_counties <- head(sort(counting_md_counties, decreasing = TRUE), 2)
print (top_md_counties)

# QUESTION THREE
state_counts <- table(readfile$State)
top_states <- head(sort(state_counts, decreasing = TRUE), 2)
print(top_states)

# QUESTION FOUR
pooling_accidents <- readfile %>%
  group_by(State) %>%
  summarize(severity_4 = mean(Severity == 4)) %>%
  arrange(desc(severity_4)) %>%
  slice(1:3)
print (pooling_accidents)

# QUESTION FIVE
bottom_4_temps <- head(sort(readfile$Temperature.F.), n = 4)
bottom_4_states <- order(readfile$Temperature.F.)[1:4]
list_state_names <- readfile$State[bottom_4_states]
print(list_state_names)
print(bottom_4_temps)
