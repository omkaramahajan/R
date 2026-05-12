data(iris) 
hist(iris$Petal.Length, 
main = "Histogram of Petal Length", 
     xlab = "Petal Length", 
     ylab = "Frequency", 
     col = "lightgreen", 
     border = "darkgreen")


data_mat <- matrix(c(70,50, 80,20,35,45),nrow = 3, byrow = TRUE)
rownames(data_mat) <- c("Clean","Fairly Clean","Dirty") 
colnames(data_mat) <- c("Clean Child","Dirty Child") 
print(data_mat)  
chi_test <- chisq.test(data_mat) 
cat("Chi-Square Test Result:\n") 
print(chi_test)
