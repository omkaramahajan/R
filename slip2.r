mean_val <- 70 
sd_val <- 2 
x <- 74  
prob <- 1 - pnorm(x, mean = mean_val, sd = sd_val) 
percentage <- prob * 100 
cat("Percentage of males taller than 74 inches:", percentage, "%\n")


mistakes <- c(2,5,9,7,11,6,5,2,7,9,3,2,8,12,14,6,3,9,8,7) 
range_val <- max(mistakes) - min(mistakes) 
coef_range <- (max(mistakes) - min(mistakes)) / (max(mistakes) + 
min(mistakes)) 
q1 <- quantile(mistakes, 0.25) 
q3 <- quantile(mistakes, 0.75) 
qd <- (q3 - q1) / 2 
coef_qd <- (q3 - q1) / (q3 + q1) 
mean_val <- mean(mistakes)  
md <- mean(abs(mistakes - mean_val)) 
cv <- (sd(mistakes) / mean_val) * 100 
cat("Range:", range_val, "\n") 
cat("Coefficient of Range:", coef_range, "\n") 
cat("Quartile Deviation:", qd, "\n") 
cat("Coefficient of Quartile Deviation:", coef_qd, "\n") 
cat("Mean Deviation about Mean:", md, "\n") 
cat("Coefficient of Variation:", cv, "\n")