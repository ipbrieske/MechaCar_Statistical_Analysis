# MechaCar_Statistical_Analysis
An examination of auto manufacturing data in R, using t-testing, linear regression, and summary statistics

## Linear Regression to Predict MPG

Our initial analysis was performed in a few simple steps. From a csv file, we imported the data into RStudio and used R code to create a linear model of miles per gallon (MPS) vs every other variable on the table, namely vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and drivetrain. We are seeking to address our null hypothes, and asses p values to determine if a relationship exists between MPS and any other variable. We used only the following code to produce the subsequent output: 

`# Import Library
library(dplyr)

# build dataframe
mc_mpg <- read.csv(file="MechaCar_mpg.csv")

# Perform linear regression using lm()
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_mpg)
summary(mpg_lm)`

![MPG linear model]()

We determined that of our variables, vehicle length and ground clearance had the lowest p values, and thus the highest degree of relationship with changes in MPG. This represents a non-random amount of variance between these variables and MPG. This also implies a non-zero slope to the linear regression. With beta coefficients of 6.3 and 3.5 for vehicle length and ground clearance, a strong positive correlation can be seen.This is to say we reject our null hypothesis for both these variables. 

