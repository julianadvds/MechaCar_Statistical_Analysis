# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG
### Summary of Regression analysis
![image](https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/MPG_regression_stats.png)
https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/MPG_regression_stats.png

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
![image](https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/39144771244c5364271d68da829a318987e93e47/Images/Suspension_Coil_summary_stats.png)
https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/39144771244c5364271d68da829a318987e93e47/Images/Suspension_Coil_summary_stats.png

### Lot PSI Summary Table
![image](https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/39144771244c5364271d68da829a318987e93e47/Images/Lot_summary_stats.png)
https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/39144771244c5364271d68da829a318987e93e47/Images/Lot_summary_stats.png

The mean, median, variance and standard deviation of the Pounds per Square inch was calculated at the sample level (Total PSI Summary Table) and then at each manufacturing lot level (Lot PSI Summary Table).  

From the total summary stats, we can see that the mean PSI is 1498.78, the median is 1500, the variance is 62.29 and the standard deviation is 7.89.  When reviewing the total summary stats where we are reviewing all manufacturing data, we can see hat the variance is less than the upper limit of 100 at 62.29 which meets the design specifications.

When the level of granularity is adjusted to analyze the summary stats at the lot level, we can see from the table (Total PSI Summary Table) that lot 1 and lot 2 have a variance well below the upperimit, however lot 3 is coming in above the upper limit of 100 at 170.29.

While the total summary statistics indicate that the manufacturing data meets the design specifications, when reviewing at the lot level we can see that that is false and the current manufacturing data does not meet the design specifications due to the variance in lot 3.



## T-Tests on Suspension Coils

### t-test on Total Sample
![image](https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/t_test_total_sample.png)
https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/t_test_total_sample.png

The t-test on the population mean (1500) and the total manufacturing sample data has a p-value of 0.06, which is above our significance level of 0.05.  We can conclude that there is no statistical difference between the sample mean and the population mean.  

### t-test on Lot 1
![image](https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot_1.png)
https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot_1.png

The t-test on the population mean (1500) and the Lot 1 manufacturing data has a p-value of 1, which is above our significance level of 0.05.  We can conclude that there is no statistical difference between the lot 1 mean and the population mean.

### t-test on Lot 2
![image](https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot_2.png)
https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot_2.png

The t-test on the population mean (1500) and the Lot 1 manufacturing data has a p-value of 0.607, which is above our significance level of 0.05.  We can conclude that there is no statistical difference between the lot 2 mean and the population mean.

### t-test on Lot 3
![image](https://github.com/julianadvds/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot_3.png)

The t-test on the population mean (1500) and the Lot 1 manufacturing data has a p-value of 0.042, which is below our significance level of 0.05.  We can conclude that there is a statistical difference between the sample mean and the population mean. This is the only lot where we see a statistical difference.  


## Study Design: MechaCar vs Competition
To explore how MechaCar performs against the competition, a statistical analysis between the metrics can be used.  

An effective study requires some key points - metrics, a null and alternate hypothesis and the appropriate statistical test.  To compare the MechaCar against competitors, we first need to determing the key metrics to evaluate.  Based on the current events and the rate of inflation the key metrics to explore for this study are fuel efficiency (mpg), purchase price, maintanence costs.  Performing a statistical test for each metric would effectively determine how MechaCar compares to the competition.   

With the metrics established, the next step is to do tefine the null & alternate hypothesis and significance level.  The null hypothesis could be that there is a difference between MechaCar and the competition.  The alternate hypothesis is that there is no difference between Mechacar and the competition.  The significance value is set at 0.05.

I would recommend using a one-sided t-test.  Each metric would require its own t-test where the p-value from the test is compared to the pre-set significance value.  The one sided t-test is effective to test if there is a significance in the mean between the sample population and the population mean.  If the p-value is greater than the significane level, the null hypothesis fails to reject.    


The study would require acccessing or collecting information from MechaCar and the comparable models from the competition.  A suitable size for the Mechacar sample data would be required and the mean of the population for the metrics being tested. 

