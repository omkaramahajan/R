f <- factor(c("A", "B", "C", "A", "B")) 
cat("Original Levels:\n") 
print(levels(f)) 
levels(f)[1] <- "X" 
cat("Modified Factor:\n") 
print(f) 
cat("New Levels:\n") 
print(levels(f))

# 1) P(X = 10), n = 12, p = 0.6 
p1 <- dbinom(10, size = 12, prob = 0.6) 
cat("P(X = 10):", p1, "\n") 
# 2) P(X ≤ 4), n = 10, p = 0.3 
p2 <- pbinom(4, size = 10, prob = 0.3) 
cat("P(X ≤ 4):", p2, "\n") 
# 3) 10th quantile, n = 10, p = 0.4 
q <- qbinom(0.10, size = 10, prob = 0.4) 
cat("10th Quantile:", q, "\n") 
# 4) Generate 10 binomial experiments (n=100, p=0.3) 
set.seed(123) 
vec <- rbinom(10, size = 100, prob = 0.3)  
cat("Random Binomial Values:\n") 
print(vec)