n <- 8 
p <- 0.4 
set.seed(123) 
sample_vals <- rbinom(5, size = n, prob = p) 
cat("Random Sample:\n") 
print(sample_vals) 
mean_val <- mean(sample_vals) 
cat("Mean of sample:", mean_val, "\n")

x <- 0:5 
freq <- c(139,76,28,4,2,1) 
# Total observations 
N <- sum(freq) 
# Mean (λ) 
lambda <- sum(x * freq) / N 
cat("Estimated lambda:", lambda, "\n") 
# Expected frequencies 
expected <- dpois(x, lambda) * N 
cat("Expected Frequencies:\n") 
print(expected)  
# Plot observed vs expected
barplot(rbind(freq, expected), 
        beside = TRUE, 
        col = c("blue","red"), 
        legend = c("Observed","Expected"), 
        main = "Observed vs Expected Frequencies", 
        xlab = "No. of Misprints", 
        ylab = "Frequency") 