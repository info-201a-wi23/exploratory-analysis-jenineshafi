# Age Distribution among different Risk Levels  

# Load the dataset 
maternal_risk <- read.csv("Maternal Health Risk Data Set (1).csv", stringsAsFactors = FALSE)

# Load dplyr and ggplot
library("ggplot2")
library("dplyr")

# Create a boxplot showing age ditributions for high, mid, and low risk levels
ggplot(maternal_risk, aes(x = RiskLevel, y = Age)) + 
  geom_boxplot(aes(color = RiskLevel)) +
  labs(title = "Age Distribution within each Risk Level Group",
       x = "Risk Level", 
       y = "Age")







