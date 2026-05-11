obs <- c(30, 25, 18, 10, 22, 15) 
exp <- rep(120/6, 6) 
chi_test <- chisq.test(x = obs, p = rep(1/6, 6)) 
cat("Chi-Square Test Result:\n") 
print(chi_test)



data(iris) 
cat("Structure:\n") 
str(iris) 
cat("\nSummary:\n") 
summary(iris)  
cat("\nColumn Names:\n") 
colnames(iris)  
cat("\nUnique Species:\n") 
unique(iris$Species) 
plot(iris$Sepal.Length, iris$Sepal.Width, 
main = "Sepal Length vs Sepal Width", 
xlab = "Sepal Length", 
ylab = "Sepal Width", 
col = "blue", 
pch = 19) 
grid()