library(tm)
library(wordcloud)
texts <- c("java is a programming language for statistical computing and graphics.",
           "it mining is the process of discovering patterns in large data sets.",
           "deep learning is a field of study that gives computers the ability to learn without being explicitly programmed.")
corpus <- Corpus(VectorSource(texts))

tdm <- TermDocumentMatrix(corpus)
word_freq <- rowSums(as.matrix(tdm))

wordcloud(words = names(word_freq), freq = word_freq, min.freq = 1,
          max.words = 100, random.order = FALSE, colors = brewer.pal(8, "Dark2"))
