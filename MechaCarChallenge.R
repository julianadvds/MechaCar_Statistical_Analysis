
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

#create total summary table
total_summary <- suspension_coil %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI))

#create summary table by manufacturing lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI))



#Deliverable 3: t-test

#filter data
lot1 <- subset(suspension_coil,Manufacturing_Lot == 'Lot1' )
lot2 <- subset(suspension_coil,Manufacturing_Lot == 'Lot2' )
lot3 <- subset(suspension_coil,Manufacturing_Lot == 'Lot3' )



#create t.tests
t.test(suspension_coil$PSI, mu=1500) #total sample
t.test(lot1$PSI, mu=1500)#lot 1
t.test(lot2$PSI, mu=1500)#lot 2
t.test(lot3$PSI, mu=1500)#lot 3



