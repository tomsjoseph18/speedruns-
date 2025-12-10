# 24074607 - Toms Joseph


# Plotting the Boxplot of 'primary_time_seconds' by 'category'
ggplot(speedrun_data, aes(x = category, y = primary_time_seconds, fill = category)) +
  geom_boxplot() +
  labs(
    title = "Comparison of Run Times Across All Categories",
    x = "Category",
    y = "Time (Seconds)"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Plotting the histogram of 'primary_time_seconds'
ggplot(speedrun_data, aes(x = primary_time_seconds, fill = category)) +
  geom_histogram(binwidth = 30, position = "dodge", alpha = 0.7) +
  labs(
    title = "Distribution of Run Times",
    x = "Time (Seconds)",
    y = "Count"
  ) +
  theme_minimal()