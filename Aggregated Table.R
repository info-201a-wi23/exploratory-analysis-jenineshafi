# Amy Ho
# Aggregated Table Script

# Load packages
library(dplyr)
library(knitr)
library(kableExtra)

# Load data
maternal_risk <- read.csv("Maternal Health Risk Data Set (1).csv", stringsAsFactors = F)

# Aggregate table focusing on risk level correlation of age and health factors

maternal_df <- maternal_risk %>%
  select("RiskLevel", "Age", "BS", "HeartRate", "BodyTemp") %>%
  group_by(RiskLevel) %>%
  summarize(min_Age = min(Age),
            max_Age = max(Age),
            avg_age = mean(Age),
            avg_BS = mean(BS),
            avg_HeartRate = mean(HeartRate),
            avg_BodyTemp = mean(BodyTemp)) %>%
  arrange(factor(RiskLevel, levels = c("high risk", "mid risk", "low risk")))
kable(maternal_df, col.names = 
        c('Risk Levels',
          'Min Age',
          'Max Age',
          'Mean Age',
          'Blood Sugar',
          'Heart Rate',
          "Body Temp")) %>%
  kable_styling(bootstrap_options = c("bordered", full_width = F)) 







