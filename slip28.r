x <- c(0,1,2,3,4,5)
f <- c(50,172,119,32,8,1)
cf_less <- cumsum(f)
cf_more <- rev(cumsum(rev(f)))
plot(x, cf_less, type="o", col="blue", xlab="No. of Children", ylab="Cumulative Frequency", main="Ogive Curves")
lines(x, cf_more, type="o", col="red")
legend("right", legend=c("Less than","More than"), col=c("blue","red"), lty=1)
N <- sum(f)
median_index <- N/2
median_value <- approx(cf_less, x, xout=median_index)$y
median_value


x <- c(0,1,2,3,4)
f <- c(25,9,8,5,4)
N <- sum(f)
mean <- sum(x*f)/N
cf <- cumsum(f)
Q1 <- approx(cf, x, xout=N/4)$y
Q3 <- approx(cf, x, xout=3*N/4)$y
QD <- (Q3 - Q1)/2
coef_QD <- (Q3 - Q1)/(Q3 + Q1)
MD <- sum(f * abs(x - mean)) / N
sd <- sqrt(sum(f*(x-mean)^2)/N)
CV <- (sd/mean)*100
mean
QD
coef_QD
MD
CV