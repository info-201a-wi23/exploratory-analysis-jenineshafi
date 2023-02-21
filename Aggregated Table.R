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
            avg_age = round(mean(Age), 1),
            avg_BS = round(mean(BS), 1),
            avg_HeartRate = round(mean(HeartRate), 0),
            avg_BodyTemp = round(mean(BodyTemp), 1)) %>%
  arrange(factor(RiskLevel, levels = c("high risk", "mid risk", "low risk")))
kable(maternal_df, col.names = 
        c('Risk Levels',
          'Minimum Age (yrs)',
          'Maximum Age (yrs)',
          'Mean Age (yrs)',
          'Mean Blood Sugar (mmol/L)',
          'Mean Heart Rate (bpm)',
          "Mean Body Temp (degrees F)")) %>%
  kable_styling(bootstrap_options = c("bordered", full_width = F))   






