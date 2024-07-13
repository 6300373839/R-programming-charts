# Install and load the tm package if you haven't already
# install.packages("tm")
library(tm)

# Load the "crude" dataset
data("crude")

# Convert the corpus to lowercase
crude <- tm_map(crude, content_transformer(tolower))

# Remove punctuation
crude <- tm_map(crude, removePunctuation)

# Remove stopwords
crude <- tm_map(crude, removeWords, stopwords("en"))

# Perform stemming
library(SnowballC)
crude <- tm_map(crude, stemDocument)

# Inspect the processed text
inspect(crude[1:2]) # Display the first two documents for inspection
