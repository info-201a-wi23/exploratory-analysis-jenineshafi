# Age Distribution among different Risk Levels  

maternal_risk <- read.csv("Maternal Health Risk Data Set (1).csv", stringsAsFactors = FALSE)

library("ggplot2")
library("dplyr")

maternal_risk <- maternal_risk %>% 
                 mutate(person = row_number(Age))

ggplot(maternal_risk, aes(x = RiskLevel, y = Age)) + 
  geom_boxplot(aes(color = RiskLevel)) +
  labs(title = "Age Distribution within each Risk Level Group",
       x = "Risk Level", 
       y = "Age")

df <- maternal_risk %>% 
      select(Age, RiskLevel)

tab <- table(df %>% group_by(Age, RiskLevel) %>% 
               summarize(mean = mean(Age)))

View(tab)

summary_info <- list()
summary_info$num_rows <- nrow(maternal_risk)
summary_info$max_Age <- maternal_risk %>% 
    filter(Age == max(Age, na.rm = TRUE))

tab <- table(summary_info)

summary_info <- list()
summary_info$num_rows <- nrow(maternal_risk)
summary_info$max_Age <- maternal_risk %>% 
  filter(Age == max(Age, na.rm = TRUE)) %>% 
  select(Age)
summary_info$avg_age <- maternal_risk %>% 
  filter()
summary_info$avg_BS <- 
summary_info$avg_HeartRate <- 


