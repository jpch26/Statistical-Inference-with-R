
# Assuming significant differences  -------------------------------------

set.seed(5) # For reproducibility

# 1 Simulate the data from a normal distribution

t1 <- rnorm(12, mean = 22, sd = 4) # diet 1
t2 <- rnorm(12, mean = 19, sd = 4) # diet 2

# 2 Character vector with each diet category

diet <- c(rep(1, length(t1)), rep(2, length(t2)))

# 3 Data frame with all the data (values and categories)

data <- data.frame(diet, weight = c(t1, t2)) 

# 4 Save the data

write.csv(data, file = "data/mice_data.csv", row.names = FALSE)
