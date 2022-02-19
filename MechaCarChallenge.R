
library(dplyr) #import dplyr library


#import and read the MechaCar_mpg csv
mechaCar_mpg <- read.csv('MechaCar_mpg.csv', check.names=F,stringsAsFactors=F)
head(mechaCar_mpg)

#perform multiple linear regression on DF
lm(mpg ~ vehicle_length + vehicle_weight + 
     spoiler_angle + ground_clearance + AWD, data =mechaCar_mpg)

#perform summary to determine pvalue and r-squared value
summary(lm(mpg~ vehicle_length + vehicle_weight + 
             spoiler_angle + ground_clearance + AWD, data =mechaCar_mpg))


#Deliverable 2: Create Visualizations for the Trip Analysis

#import and read Suspension Coil
suspension_coil <- read.csv('Suspension_Coil.csv', check.names=F,stringsAsFactors=F)
head(suspension_coil)


total_summary <- suspension_coil %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI))

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI))
