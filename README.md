# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

### Variance to mgp values
A multiple linear regression analysis was performed on the MechaCar_MPG dataset.  Before the regression analysis was completed, a significance level p<0.05 was established as the threshold for statistically significant.  After completing the regression analysis and comparing the p-values with the significance threshold, it can be concluded that it is statistically unlikely that vehicle length, vehicle weight and ground clearance contribute to the vanriance of the linear model.  This can be concluded the p-values for each of these variables was below the 0.05 threshold.  The remaining variable; weight, spoiler angle and AWD, all had p-values greater than the significance level of 0.05 and as a result are able to conclude that these variables do contribute to the variance of the linear model.  Please see image above for statistical summary. 

### Slope of Linear Model
Before the analysis of the slope was completed, both null hypothesis, alternate hypthesis and significance level were set.
        •Null hypothesis: Slope = 0
        •Alternate Hypothesis: Slope =/= 0
        •Significance Level : p=0.05

After the summary statistics were analyized, we see that the p-value is well below our threshold of 0.05 at 5.35e-11 meaning we reject our null hypothesis.  Since we have rejected our null hypothesis, we can conclude that the slope does not equal zero.

### Model Prediction

The summary statistics show that the R-squared value is 0.7149, indicating that approximately 72% of the variance in the dependent variable is due to our model.  R-squared values range from 0-1 with zero being a weak model and 1 being a strong model.  As our value is >0.07, we can conclude that we have a strong model to calculate dependent variables.

## Summary Statistics on Suspension Coils
### Total PSI Summary Table
![image]https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/39144771244c5364271d68da829a318987e93e47/Images/Suspension_Coil_summary_stats.png
https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/39144771244c5364271d68da829a318987e93e47/Images/Suspension_Coil_summary_stats.png

### Lot PSI Summary Table
![image]https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/39144771244c5364271d68da829a318987e93e47/Images/Lot_summary_stats.png
https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/39144771244c5364271d68da829a318987e93e47/Images/Lot_summary_stats.png

The mean, median, variance and standard deviation of the Pounds per Square inch was calculated at the sample level (Total PSI Summary Table) and then at each manufacturing lot level (Lot PSI Summary Table).  

From the total summary stats, we can see that the mean PSI is 1498.78, the median is 1500, the variance is 62.29 and the standard deviation is 7.89.  When reviewing the total summary stats where we are reviewing all manufacturing data, we can see hat the variance is less than the upper limit of 100 at 62.29 which meets the design specifications.

When the level of granularity is adjusted to analyze the summary stats at the lot level, we can see from the table (Total PSI Summary Table) that lot 1 and lot 2 have a variance well below the upperimit, however lot 3 is coming in above the upper limit of 100 at 170.29.

While the total summary statistics indicate that the manufacturing data meets the design specifications, when reviewing at the lot level we can see that that is false and the current manufacturing data does not meet the design specifications due to the variance in lot 3.

