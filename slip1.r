num <- c(110, 20, 330, 40, 150, 660, 370, 980, 190, 100) 
max_value <- max(num) 
min_value <- min(num) 
mean_value <- mean(num) 
median_value <- median(num) 
sd_value <- sd(num) 
mode_value <- function(x) { 
uniq_x <- unique(x) 
uniq_x[which.max(tabulate(match(x, uniq_x)))] 
} 
mode_result <- mode_value(num) 
cat("Maximum:", max_value, "\n") 
cat("Minimum:", min_value, "\n") 
cat("Mean:", mean_value, "\n") 
cat("Median:", median_value, "\n") 
cat("Mode:", mode_result, "\n") 
cat("Standard Deviation:", sd_value, "\n")


sales <- c(100, 190, 210, 160, 150, 160, 190, 200, 170, 152) 
am <- mean(sales) 
gm <- exp(mean(log(sales))) 
hm <- length(sales) / sum(1/sales) 
med <- median(sales) 
mode_fun <- function(x) { 
uniq <- unique(x) 
uniq[tabulate(match(x, uniq)) == max(tabulate(match(x, uniq)))] 
} 
mode_val <- mode_fun(sales)  
q1 <- quantile(sales, 0.25) 
d3 <- quantile(sales, 0.30) 
p42 <- quantile(sales, 0.42) 
cat("Arithmetic Mean:", am, "\n") 
cat("Geometric Mean:", gm, "\n") 
cat("Harmonic Mean:", hm, "\n") 
cat("Median:", med, "\n") 
cat("Mode:", mode_val, "\n") 
cat("Q1:", q1, "\n") 
cat("D3:", d3, "\n") 
cat("P42:", p42, "\n")