num <- 25 
binary <- intToBits(num)  
binary_val <- rev(as.integer(binary[1:8])) 
cat("Binary value of", num, "is:\n") 
print(binary_val) 

classes <- c(5,10,15,20,25,30,35,40) 
freq <- c(2,7,16,34,13,6,2) 
more_than_cf <- rev(cumsum(rev(freq))) 
plot(classes[-1], more_than_cf, 
type = "o", 
main = "More Than Ogive Curve", 
xlab = "Length (cm)", 
ylab = "Cumulative Frequency", 
col = "blue", 
pch = 19)  
grid()