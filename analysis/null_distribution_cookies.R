
# Cookies diameter null distribution -------------------------------------------------------

set.seed(5)

# Packages
library(ggplot2)

# Diameter data (mean = 4.5 and sd = 0.4)
diameter <- rnorm(1000, mean = 4.5, sd = 0.4)

# Means of samples of size 5
n_samples <- 1000

means_n5 <- vector("numeric", length = n_samples)
for (i in 1:n_samples) {
  means_n5[i] <- mean(sample(diameter, 5))
}

# Histogram
hist_null <- ggplot(data = data.frame(mean = means_n5), aes(mean)) +
  geom_histogram() +
  geom_histogram(color = "black", fill = "white", binwidth = 0.1) +
  xlab("Cookie mean (n = 5) diameter (cm)") +
  ylab("Count") +
  theme_classic() 

# Save histogram
ggsave(filename = "graphs/hist_null_cookies.jpg", plot = hist_null)