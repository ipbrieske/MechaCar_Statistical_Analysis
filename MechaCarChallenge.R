# Import Library
library(dplyr)

# build dataframe
mc_mpg <- read.csv(file="MechaCar_mpg.csv")

# Perform linear regression using lm()
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_mpg)
summary(mpg_lm)


# Build summary dataframe from Susupension Coil csv
suspension_coil <- read.csv(file="Suspension_Coil.csv")
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <-suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
