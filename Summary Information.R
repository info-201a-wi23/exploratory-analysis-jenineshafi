# Amy Ho
# Summary Information Script

# Load packages
library(dplyr)
library(knitr)

# Load data
maternal_risk <- read.csv("Maternal Health Risk Data Set (1).csv", stringsAsFactors = F)

# Find the lowest age of maternal risk
min_Age <- maternal_risk %>%
  filter(Age == min(Age, na.rm = TRUE)) %>%
  select(Age)

# Find the highest age of maternal risk
max_Age <- maternal_risk %>%
  filter(Age == max(Age, na.rm = TRUE)) %>%
  select(Age)

# Find the average age of maternal risk
avg_age <- maternal_risk %>% 
  select(Age) %>%
  summarize(mean = mean(Age))

#Find the average BS of maternal risk
avg_BS <- maternal_risk %>%
  select(BS) %>%
  summarize(mean = mean(BS))

# Find the average heart rate of maternal risk 
avg_HeartRate <- maternal_risk %>%
  select(HeartRate) %>%
  summarize(mean = mean(HeartRate))

# Find the average body temperature of maternal risk
avg_BodyTemp <- maternal_risk %>%
  select(BodyTemp) %>%
  summarize(mean = mean(BodyTemp))

# Store summary information in a list

summary_info <- list()
summary_info$num_observations <- nrow(maternal_risk)
summary_info$min_Age <- min_Age
summary_info$max_Age <- max_Age
summary_info$avg_age <- avg_age
summary_info$avg_BS <- avg_BS
summary_info$avg_HeartRate <- avg_HeartRate
summary_info$avg_BodyTemp <- avg_BodyTemp

summary_info[] <- lapply(summary_info, round)


  
  



