library(dplyr)

# Linear regression to predict MPG

mecha <- read.csv("C:/Users/Teresa - School/Documents/1. U of T SCS - Data Analytics Bootcamp/Module 16 - Statistics and R/MechaCar-Statistical-Analysis/MechaCar_mpg.csv", header = T)

mecha.model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha)

summary(mecha.model)

# Create visualizations for trip analysis 

coil <- read.table("C:/Users/Teresa - School/Documents/1. U of T SCS - Data Analytics Bootcamp/Module 16 - Statistics and R/MechaCar-Statistical-Analysis/Suspension_Coil.csv", sep = ",", header = TRUE)

summary(coil$PSI)

total_summary <- coil %>%
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI),
            sd = sd(PSI))

lot_summary <- coil %>% 
  group_by(Manufacturing_Lot)%>% 
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI),
            sd = sd(PSI))

  




