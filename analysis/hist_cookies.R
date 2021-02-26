# Histogram for data cookies diameter ------------------------------------

# Packages
library(dplyr)
library(ggplot2)

# Import the data
cookies_diameter <- read.csv("data/cookies_diameter.csv")

# Histogram 
freq_hist <- cookies_diameter %>% 
  ggplot(aes(x = D)) +
  geom_histogram(color = "black", fill = "white", binwidth = 0.2) +
  xlab("Cookie diameter (cm)") +
  ylab("Count") +
  theme_classic() 

# Save histogram
ggsave(filename = "graphs/diameter_cookies_hist.jpeg", plot = freq_hist)