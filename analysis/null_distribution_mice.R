# Mice weight null distribution -------------------------------------------------------

set.seed(5)

# Packages
library(ggplot2)

#  Weight population for regular diet (N=250, mean = 20 and sd = 3)
weight_regular_diet <- rnorm(250, mean = 20, sd = 4)

# Differences for null hypothesis
n_differences <- 10000

diffs <- vector("numeric", length = n_differences)
for (i in 1:n_differences) {
  regular_diet <- sample(weight_regular_diet, 12)
  high_fat_diet <- sample(weight_regular_diet, 12)
  diffs[i] <- mean(high_fat_diet) - mean(regular_diet)
}

# Histogram
hist_null_mice <- ggplot(data = data.frame(diffs = diffs), aes(diffs)) +
  geom_histogram() +
  geom_histogram(color = "black", fill = "white", binwidth = 0.5) +
  xlab("Weight differences (g)") +
  ylab("Count") +
  theme_classic() 

# Save histogram
ggsave(filename = "graphs/hist_null_mice.jpg", plot = hist_null_mice)