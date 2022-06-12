# Import Library
library(dplyr)

# build dataframe
mc_mpg <- read.csv(file="MechaCar_mpg.csv")

# Perform linear regression using lm()
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_mpg)
summary(mpg_lm)