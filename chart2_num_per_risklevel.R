library(ggplot2)
library(dplyr)

#Loading in the data set
maternal_risk <- read.csv("Maternal Health Risk Data Set (1).csv", stringsAsFactors = F)

#Plotting how many inputs there were for each RiskLevel: low, mid, and high risk
ggplot(maternal_risk, aes (x=RiskLevel))+ geom_bar()

