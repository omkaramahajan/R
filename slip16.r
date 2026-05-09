v1 <- c(1,2,3,4,5,6) 
v2 <- c(7,8,9,10) 
v <- c(v1, v2) 
arr <- array(v, dim = c(2,3,2)) 
mat1 <- arr[,,1] 
mat2 <- arr[,,2] 
cat("Matrix 1:\n") 
print(mat1) 
cat("Matrix 2:\n") 
print(mat2) 
result <- mat1 %*% t(mat2)   
cat("Matrix Multiplication Result:\n") 
print(result)

library(MASS)  
data(survey) 
# Create frequency table 
table_data <- table(survey$Smoke, survey$Exer) 
cat("Frequency Table:\n") 
print(table_data) 
# Chi-square test 
chi_test <- chisq.test(table_data) 
cat("\nChi-Square Test Result:\n") 
print(chi_test)