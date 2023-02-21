# Averaging Health Factors in Each Risk Category

maternal_risk <- read.csv("Maternal Health Risk Data Set (1).csv", stringsAsFactors = FALSE)

maternal_risk <- maternal_risk %>% 
  mutate(person = row_number(Age))
library("ggplot2")
library("dplyr")

ggplot(maternal_risk) + geom_count(aes(x = person, y = BS, color = RiskLevel))

