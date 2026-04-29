first_10_lower <- letters[1:10]  
last_10_upper <- LETTERS[17:26] 
range_upper <- LETTERS[22:24] 
cat("First 10 lowercase letters:\n", first_10_lower, "\n\n") 
cat("Last 10 uppercase letters:\n", last_10_upper, "\n\n") 
cat("22nd to 24th uppercase letters:\n", range_upper, "\n") 


data(mtcars) 
boxplot(mtcars, 
main = "Boxplot of mtcars Dataset", 
col = "lightgreen", 
las = 2)  
outliers <- boxplot.stats(mtcars$mpg)$out 
cat("Outliers in mpg:\n", outliers, "\n") 
