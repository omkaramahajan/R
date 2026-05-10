marks <- c(14,18,20,22,25,30,28,26,24,23,21,19,17,16,15,27,29,31,33,35,34,32,30,28,26)
hist(marks, 
main = "Histogram of Marks", 
xlab = "Marks", 
ylab = "Frequency", 
col = "lightblue", 
border = "blue")

data(iris) 
cat("Structure of dataset:\n") 
str(iris) 
cat("\nSummary statistics:\n") 
summary(iris) 
cat("\nColumn names:\n") 
colnames(iris)  
cat("\nUnique species:\n") 
unique(iris$Species)
plot(iris$Sepal.Length, iris$Sepal.Width, 
main = "Sepal Length vs Sepal Width", 
xlab = "Sepal Length", 
ylab = "Sepal Width", 
col = "purple", 
pch = 19) 
grid()