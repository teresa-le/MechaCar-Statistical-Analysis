library(dplyr)

# Linear regression to predict MPG

mecha <- read.csv("C:/Users/Teresa - School/Documents/1. U of T SCS - Data Analytics Bootcamp/Module 16 - Statistics and R/MechaCar-Statistical-Analysis/MechaCar_mpg.csv", header = T)

mecha.model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha)

summary(mecha.model)

# Create visualizations for trip analysis 

coil <- read.table("C:/Users/Teresa - School/Documents/1. U of T SCS - Data Analytics Bootcamp/Module 16 - Statistics and R/MechaCar-Statistical-Analysis/Suspension_Coil.csv", sep = ",", header = TRUE)

summary(coil$PSI)

## Summary statistics for all lots 
total_summary <- coil %>%
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI),
            sd = sd(PSI))


## Summary statistics for each lot 
lot_summary <- coil %>% 
  group_by(Manufacturing_Lot)%>% 
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI),
            sd = sd(PSI))

# T-Tests on Suspension Coils

## One sample t-test comparing PSI across all manufacturing lots to population mean 
t.test(coil[['PSI']])

## One sample t-test comparing PSI each manufacturing lot to population mean 
coil.Lot1 <- 
    subset(coil, Manufacturing_Lot == 'Lot1')

coil.Lot2 <- 
  subset(coil, Manufacturing_Lot == 'Lot2')

coil.Lot3 <- 
  subset(coil, Manufacturing_Lot == 'Lot3')

