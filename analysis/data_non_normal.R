
# Data from non normal distribution ---------------------------------------

set.seed(5)

# Packages
library(ggplot2)

# Simulate data from a uniform distribution
non_normal_data <- data.frame(x = runif(10000, max = 100)) # uniform distribution

# Save data
write.csv(data, file = "data/data_non_normal.csv")

# Histogram
non_normal_hist <- ggplot(non_normal_data, aes(x)) +
  geom_histogram(color = "black", fill = "white") +
  ylab("Count") +
  theme_classic()

# Save histogram
ggsave(filename = "graphs/non_normal_hist.jpg", plot = non_normal_hist)