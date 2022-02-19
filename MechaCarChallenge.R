
library(dplyr) #import dplyr library


#import and read the MechaCar_mpg csv
mechaCar_mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors=F)
head(mechaCar_mpg)

#perform multiple linear regression on DF
lm(mpg~ vehicle_length + vehicle_weight + 
     spoiler_angle + ground_clearance + AWD, data =mechaCar_mpg)

#perform summary to determine pvalue and r-squared value
summary(lm(mpg~ vehicle_length + vehicle_weight + 
             spoiler_angle + ground_clearance + AWD, data =mechaCar_mpg))
