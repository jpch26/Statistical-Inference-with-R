
# Means distribution for n = 5 --------------------------------------------

# Packages
library(tidyverse)

# Data
cookies_diameter <- read.csv("data/cookies_diameter.csv")

# Take 1000 samples of size 5
n_samples <- 1000

mean_cookies <- vector("numeric", length = n_samples)
for (i in 1:n_samples) {
  mean_cookies[i] <- mean(sample(cookies_diameter$D, size = 5))
}

mean_cookies <- tibble(mean_n5 = mean_cookies)

# Histogram
freq_hist_mean <- mean_cookies %>% 
  ggplot(aes(x = mean_n5)) +
  geom_histogram(color = "black", fill = "white", binwidth = 0.1) +
  xlab("Cookie mean (n = 5) diameter (cm)") +
  ylab("Count") +
  theme_classic() 

# Save histogram
ggsave(filename = "graphs/diameter_mean_cookies_hist.jpg", 
       plot = freq_hist_mean)