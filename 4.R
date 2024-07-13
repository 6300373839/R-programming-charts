# Install and load the necessary packages if you haven't already
# install.packages("ggplot2")
library(ggplot2)
# Create the data frame
data <- data.frame(
  height = c(58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72),
  weight = c(115, 117, 120, 123, 126, 129, 132, 135, 139, 142, 146, 150, 154, 159, 164)
)
# Create weight categories
data$weight_category <- cut(data$weight, breaks = c(110, 120, 130, 140, 150, 160, 170), 
                            labels = c("110-120", "121-130", "131-140", "141-150", "151-160", "161-170"))
# Summarize the data by weight category
weight_data <- as.data.frame(table(data$weight_category))
colnames(weight_data) <- c("Weight_Category", "Count")
weight_data$Percentage <- weight_data$Count / sum(weight_data$Count) * 100
# Create the pie chart using ggplot2
ggplot(weight_data, aes(x = "", y = Percentage, fill = Weight_Category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Weights", fill = "Weight Category") +
  theme_void() +
  theme(legend.position = "right")
