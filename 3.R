library(ggplot2)
# Create the data frame
data <- data.frame(
  height = c(58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72),
  weight = c(115, 117, 120, 123, 126, 129, 132, 135, 139, 142, 146, 150, 154, 159, 164)
)
# Create the bar graph using ggplot2
ggplot(data, aes(x = factor(height), y = weight)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "blue") +
  labs(title = "Weight by Height", x = "Height (inches)", y = "Weight (pounds)") +
  theme_minimal()
