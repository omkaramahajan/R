commodity <- c("Food","Rent","Clothes","Education","Savings","Miscellaneous")
expenditure <- c(300,200,125,110,90,75)
pie(expenditure, labels = commodity, col = rainbow(length(expenditure)), main = "Expenditure Pie Chart")



A <- c(101,27,0,36,82,45,7,13,65,14)
B <- c(97,12,40,96,13,8,85,8,56,15)
mean_A <- mean(A)
mean_B <- mean(B)
sd_A <- sd(A)
sd_B <- sd(B)
cv_A <- (sd_A/mean_A)*100
cv_B <- (sd_B/mean_B)*100
mean_A
mean_B
sd_A
sd_B
cv_A
cv_B
if(cv_A < cv_B){
  print("Batsman A is more consistent")
} else {
  print("Batsman B is more consistent")
}
