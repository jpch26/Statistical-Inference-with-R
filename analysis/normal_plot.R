
# Normal plot -------------------------------------------------------------

# Packages
library(ggplot2)

# Plot (mean=0, sd=1)
normal_plot <- ggplot(data = data.frame(x = c(-3, 3)), aes(x)) +
  stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1)) + ylab("") +
  scale_y_continuous(breaks = NULL) +
  theme_classic()

# Save plot
ggsave(filename = "graphs/normal_plot.jpg", plot = normal_plot)
