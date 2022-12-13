# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

<img src="https://github.com/teresa-le/MechaCar_Statistical_Analysis/blob/main/Resources/Mecha%20Model%20-%20Multiple%20Linear%20Regression%20Model.png">

Vehicle_weight, spoiler_angle, and AWD's p-values are more than the significance level 0.05 so they likely contribute a random amount of variance to the mpg values in the dataset. 

The slope of the linear model is not 0; the slope is the coefficient of the independent variable used to predict the dependent variable. For example, if vehicle_length is being used to predict mpg, then the slope would be 6.267. If vehicle_length increases by 1 and the values of the other independent variables are held constant, then mpg would increase by 6.267.

The linear model predicts mpg of MechaCar prototypes pretty effectively. The model can predict 71.49% of the observations in the model. Based on the p-value, we reject the null hypothesis; there is sufficient evidence that at least one of the independent variables significantly influences and can predict the dependent variable mpg. 


## Summary Statistics on Suspension Coils

### Summary Statistics for All Lots 

<img src="https://github.com/teresa-le/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png">

When it comes to all manufacturing lots, the suspension coils currently meet the design specification, which is to have a variance no more than 100 pounds per square inch. 

### Summary Statistics for All Lots by Lot 

<img src="https://github.com/teresa-le/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png">

In the table above, the variance for lot 3 is 170.3 pounds per square inch so lot 3 does not meet the design specification. 


## T-Tests on Suspension Coils

### All Lots

<img src="https://github.com/teresa-le/MechaCar_Statistical_Analysis/blob/main/Resources/t-test%20all.png">

### Lot 1 

<img src="https://github.com/teresa-le/MechaCar_Statistical_Analysis/blob/main/Resources/t.test%20lot%201.png">

### Lot 2 

<img src="https://github.com/teresa-le/MechaCar_Statistical_Analysis/blob/main/Resources/t.test%20lot%202.png">

### Lot 3 

<img src="https://github.com/teresa-le/MechaCar_Statistical_Analysis/blob/main/Resources/t.test%20lot%203.png">

One sample t-tests were conducted to compare the sample means of PSI for all lots combined and each separate lot to the population mean of 1500 pounds per square inch. 

The p-values for all lots combined, lot 1, and lot 2 is greater than the significance level 0.05. Therefore, we do not have sufficient evidence to reject the null hypothesis, and the means for the combined lots, lot 1 and lot 2 are statistically similar to the population mean. 

The p-value for lot 3 is less than the significance level 0.05 so there is sufficient evidence to reject the null hypothesis and that the mean for lot 3's PSI is statistically different from the population mean. 


## Study Design: MechaCar vs Competition


