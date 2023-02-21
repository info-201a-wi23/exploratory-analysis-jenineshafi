library(ggplot2)
library(dplyr)

#Loading in the data set
maternal_risk <- read.csv("Maternal Health Risk Data Set (1).csv", stringsAsFactors = F)

#Plotting how many inputs there were for each RiskLevel: low, mid, and high risk
ggplot(maternal_risk, aes (x=RiskLevel))+ geom_bar()

#Confirming numbers by referencing the dataset
num_high_risk<-maternal_risk %>% select(RiskLevel) %>% filter(RiskLevel == "high risk") 
nrow(num_high_risk)

num_mid_risk<-maternal_risk %>% select(RiskLevel) %>% filter(RiskLevel == "mid risk") nrow(num_mid_risk)
nrow(num_mid_risk)

num_low_risk<-maternal_risk %>% select(RiskLevel) %>% filter(RiskLevel == "low risk")
nrow(num_low_risk)
