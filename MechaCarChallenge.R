library(dplyr)

# Linear regression to predict MPG

mecha <- read.csv("C:/Users/Teresa - School/Documents/1. U of T SCS - Data Analytics Bootcamp/Module 16 - Statistics and R/MechaCar-Statistical-Analysis/MechaCar_mpg.csv", header = T)

mecha.model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha)

summary(mecha.model)