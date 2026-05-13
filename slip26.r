total <- 12
blue <- 7
red <- 5
n <- 4
comb <- function(n, r) {
  choose(n, r)
}
s
total_ways <- comb(total, n)
prob <- 0
for (k in 2:4) {
  ways <- comb(blue, k) * comb(red, n - k)
  prob <- prob + ways
}
probability <- prob / total_ways
print(probability)



heads <- 0:5
observed_freq <- c(6, 15, 25, 42, 18, 4)
N <- sum(observed_freq)
n <- 5
mean_heads <- sum(heads * observed_freq) / N
p <- mean_heads / n
expected_freq <- dbinom(heads, size = n, prob = p) * N
print(expected_freq)
barplot(rbind(observed_freq, expected_freq),
        beside = TRUE,
        col = c("blue", "red"),
        names.arg = heads,
        main = "Observed vs Expected Frequencies",
        xlab = "Number of Heads",
        ylab = "Frequency")

legend("topright", legend = c("Observed", "Expected"),
       fill = c("blue", "red"))

chi_sq <- sum((observed_freq - expected_freq)^2 / expected_freq)
df <- length(heads) - 1 - 1  
p_value <- pchisq(chi_sq, df, lower.tail = FALSE)
cat("Chi-square value:", chi_sq, "\n")
cat("Degrees of freedom:", df, "\n")
cat("P-value:", p_value, "\n")
if (p_value > 0.05) {
  cat("Model is adequate (Good fit)\n")
} else {
  cat("Model is not adequate (Poor fit)\n")
}
