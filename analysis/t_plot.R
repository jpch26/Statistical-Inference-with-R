
# Normal plot -------------------------------------------------------------

# Packages
library(ggplot2)

# Plot (mean=0, sd=1)
q_data <- data.frame(
  x = c(-3, 3),
  df = rep(c(1, 5, 15, 30), each = 2)
)

t_plot <- ggplot(data = data.frame(x = c(-3,3)), aes(x)) +
  stat_function(fun = dt, n = 101, args = list(df = 2)) + 
  stat_function(fun = dt, n = 101, args = list(df = 4), color = "red") + 
  stat_function(fun = dt, n = 101, args = list(df = 10), color = "blue") +
  stat_function(fun = dt, n = 101, args = list(df = 50), color = "green") +
  ylab("") +
  scale_y_continuous(breaks = NULL) +
  theme_classic()

# Save plot
ggsave(filename = "graphs/t_plot.jpg", plot = t_plot)