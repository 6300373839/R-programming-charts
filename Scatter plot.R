# Load the ggplot2 package
library(ggplot2)

# Use the mtcars dataset
data("mtcars")

# Create a scatter plot
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  labs(title = "Scatter Plot of Horsepower vs. Miles Per Gallon",
       x = "Horsepower (hp)",
       y = "Miles Per Gallon (mpg)") +
  theme_minimal()
