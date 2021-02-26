
# Sample size calculation -------------------------------------------------

# Packages
library(pwr)

# Effect size
difference <- 20   # difference between weight means (grams)
st_dv <- 6.3       # standard deviation for both treatments

effect_size <- difference / st_dv

# Sample size calculation
samp_size <- pwr.t.test(
  d = effect_size, sig.level = 0.05, 
  power = 0.99,  type = "two.sample", alternative = "greater"
  )