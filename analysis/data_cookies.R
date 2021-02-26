
# Data simulation for cookies diameter ------------------------------------

# Packages
library(dplyr)

set.seed(5) # For reproducibility

# Diameter data from a normal distribution

diameter <- rnorm(1000, mean = 5, sd = 0.4)  # mean = 5 cm
diameter <- tibble(D = diameter)

write.csv(diameter, file = "data/cookies_diameter.csv", row.names = FALSE)