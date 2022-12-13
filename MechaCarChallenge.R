library(dplyr)

# Linear regression to predict MPG

## Import the file 

mecha <- read.csv("C:/Users/Teresa - School/Documents/1. U of T SCS - Data Analytics Bootcamp/Module 16 - Statistics and R/MechaCar-Statistical-Analysis/MechaCar_mpg.csv", header = T)

## Create a multiple linear regression model to predict mpg 
mecha.model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha)

## View summary of results to determine  p-value and the r-squared value for the model =
summary(mecha.model)

# Create visualizations for trip analysis 

## Import the file 
coil <- read.table("C:/Users/Teresa - School/Documents/1. U of T SCS - Data Analytics Bootcamp/Module 16 - Statistics and R/MechaCar-Statistical-Analysis/Suspension_Coil.csv", sep = ",", header = TRUE)

## Summary statistics of the PSI column for all lots 
total_summary <- coil %>%
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI),
            sd = sd(PSI))

View(total_summary)

## Summary statistics of the PSI column for each lot 
lot_summary <- coil %>% 
  group_by(Manufacturing_Lot)%>% 
  summarize(mean = mean(PSI),
            median = median(PSI),
            variance = var(PSI),
            sd = sd(PSI))

View(lot_summary)

# T-Tests on Suspension Coils

## One sample t-test comparing PSI across all manufacturing lots to population mean 

### Test for normality and perform t-test 
shapiro.test(coil$PSI)

t.test(log10(coil[['PSI']]),mu=mean(log10(1500)))

## One sample t-test comparing PSI each manufacturing lot to population mean 

### Create subsets of each lot 
coil.Lot1 <- 
    subset(coil, Manufacturing_Lot == 'Lot1')

coil.Lot2 <- 
  subset(coil, Manufacturing_Lot == 'Lot2')

coil.Lot3 <- 
  subset(coil, Manufacturing_Lot == 'Lot3')

### Test for normality and perform t-tests 

shapiro.test(coil.Lot1$PSI)
shapiro.test(coil.Lot2$PSI)
shapiro.test(coil.Lot3$PSI)

t.test(log10(coil.Lot1[['PSI']]),mu=mean(log10(1500)))

t.test(log10(coil.Lot2[['PSI']]),mu=mean(log10(1500)))

t.test(log10(coil.Lot3[['PSI']]),mu=mean(log10(1500)))

