country <- c("Cuba","Australia","Japan","Nepal","Egypt","India")
production <- c(320,300,50,10,9,200)

barplot(production, names.arg=country, col="skyblue",
        main="Production of Sugar",
        xlab="Country", ylab="Production")



sigma <- 8.5
n <- 42
xbar <- 212.79
mu <- 210
z <- (xbar - mu) / (sigma / sqrt(n))
p_value <- 1 - pnorm(z)
z
p_value
if(p_value < 0.05){
  print("Mean is significantly greater than 210")
} else {
  print("Mean is not significantly greater than 210")
}       