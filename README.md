# MechaCar_Statistical_Analysis
An examination of auto manufacturing data in R, using t-testing, linear regression, and summary statistics

## Linear Regression to Predict MPG

Our initial analysis was performed in a few simple steps. From a csv file, we imported the data into RStudio and used R code to create a linear model of miles per gallon (MPS) vs every other variable on the table, namely vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and drivetrain. We are seeking to address our null hypothes, and asses p values to determine if a relationship exists between MPS and any other variable. We used only the following code to produce the subsequent output: 
```
# Import Library
library(dplyr)

# build dataframe
mc_mpg <- read.csv(file="MechaCar_mpg.csv")

# Perform linear regression using lm()
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_mpg)
summary(mpg_lm)
```

![MPG linear model](https://github.com/ipbrieske/MechaCar_Statistical_Analysis/blob/main/Images/mpg_lm.png)

We determined that of our variables, vehicle length and ground clearance had the lowest p values, and thus the highest degree of relationship with changes in MPG. This represents a non-random amount of variance between these variables and MPG. This also implies a non-zero slope to the linear regression. With beta coefficients of 6.3 and 3.5 for vehicle length and ground clearance, a strong positive correlation can be seen. This is to say we reject our null hypothesis for both these variables. 

## Summary Statistics on Suspension Coils

As part of the data requested by our client, we examined manufacturing lot data to find outliers in the quality control process. One of these metrics is PSI - pressure per square inch - and is not to exceed a variance measurement of 100. We examined PSI variance for the entire dataset, and then by manufacturing lot. The results are as follows: 

![Total Summary](https://github.com/ipbrieske/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png)
![Lot Summary](https://github.com/ipbrieske/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png)

At first, it would appear variance is within acceptable levels. After grouping by manufacturing lot, it appears Lot 3 had unacceptable levels of variance in PSI and should be addressed to maintain compliance with established manufacturing standards. 

## T-Tests on Suspension Coils

Because of the wide variance in Lot 3, we found it necessary to perform T tests accross the data groups to determine relative variation amongst the groups and the mean of all PSI readings. We began with a basic T test of the entire data set against the mean of the set.

![Total vs Mean](https://github.com/ipbrieske/MechaCar_Statistical_Analysis/blob/main/Images/total_vs_mean.png)

Here we see a T value of 0, implying no difference in variations. This makes sense, as the mean of our PSI data is derived from the PSI dataset we are sampling from. We can say with 95% confidence that samples will fall 4.6 units above or below the mean. 

![Lot3 T Test](https://github.com/ipbrieske/MechaCar_Statistical_Analysis/blob/main/Images/Lot3_t_test.png)

When looking at Lot3 however, we get the highest T value of all three groups - 1.1632 - implying a relatively high degree of variance between Lot 3 samples and the mean of the full set. Here our confidence interval spans from 2.1965 units below the mean and 7.4757 units above the mean. This informs us that PSIs for Lot 3 had significant variance above the mean of the total data. 

The remaining T Test results are available in the Images folder. 

## Study Design: MechaCar vs Competition

After presenting this information, we were posed with the question: 
- How does MechaCar perform against their competition?

To answer this question, we will outline the suggested next steps. This report is open for completion. 

To assess this question, we have to define MechaCar's competition, and then find metrics to compare. MechaCar manufactures personal vehicles and sells from an inventory of vehicles. Because the company already maintains data on MPG for their vehicles, that would be an excellent metric to measure against the competition. 

Using publically available data, MechaCar could assemble a list of profiles on auto companies, detailing their vehicle length, vehicle weight, spoiler angle, ground clearance, and drivetrain. MechaCar would run a series of linear regressions similar to the ones run here on each company's data and then compare the coefficients of significant variables. In doing so, they would determine which companies were able to produce a higher MPG by increasing the relevant significant variables. If a competitor is able to increase vehicle efficiency more by increasing vehicle length by the same amount, for example, looking at how and why they were able to outperform MechaCar in regards to vehicle length modifications could provide invaluable design insight. The converse is also valuable: if MechaCar is able to squeeze out a higher MPG by increasing ground clearance than it's competitors, looking into how to specialize in that advantage would be rewarding. 
