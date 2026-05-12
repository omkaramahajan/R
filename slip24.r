set.seed(123) 
sample_vals <- rpois(5, lambda = 0.8) 
cat("Random Sample:\n") 
print(sample_vals) 
mean_val <- mean(sample_vals) 
cat("Mean of sample:", mean_val, "\n")

data(mtcars) 
# 1) First 6 rows 
cat("First 6 rows:\n") 
head(mtcars)  
library(ggplot2) 
mtcars$model <- rownames(mtcars) 
# 2) Histogram (mpg used instead of "age") 
ggplot(mtcars, aes(x = mpg)) + 
geom_histogram(fill = "blue", bins = 10) + 
ggtitle("Histogram of MPG") 
# 3) Boxplot (mpg by model) 
ggplot(mtcars, aes(x = model, y = mpg)) + 
geom_boxplot(fill = "green") + 
ggtitle("Boxplot of MPG by Model") + 
theme(axis.text.x = element_text(angle = 90))