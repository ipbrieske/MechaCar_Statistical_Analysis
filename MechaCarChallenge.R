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

# Perform a t-test of each manufacturing lot vs the total lot
t.test(suspension_coil$PSI, lot_summary$Mean)

lot1 <- subset(suspension_coil,Manufacturing_Lot == 'Lot1')
t.test(lot_summary$Mean, lot1$PSI)

lot2 <- subset(suspension_coil,Manufacturing_Lot == 'Lot2')
t.test(lot_summary$Mean, lot2$PSI)

lot3 <- subset(suspension_coil,Manufacturing_Lot == 'Lot3')
t.test(lot_summary$Mean, lot3$PSI)