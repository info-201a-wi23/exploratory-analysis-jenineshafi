# Averaging Health Factors in Each Risk Category

maternal_risk <- read.csv("Maternal Health Risk Data Set (1).csv", stringsAsFactors = FALSE)

library("ggplot2")
library("dplyr")

ggplot(maternal_risk) + geom_count(aes(x = RiskLevel, y = BS, color = RiskLevel))

