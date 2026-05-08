v1 <- c(10, 25, 5, 40) 
v2 <- c(15, 30, 20, 35)  
v <- c(v1, v2)   
v_desc <- sort(v, decreasing = TRUE) 
cat("Combined Vector:\n") 
print(v) 
cat("Descending Order:\n") 
print(v_desc)

city <- c("Nashik","Pune","Mumbai","Nagpur","Jalgaon") 
firs <- c(180,299,635,340,220) 
solved <- c(90,57,220,200,144) 
data_mat <- rbind(firs, solved) 
colnames(data_mat) <- city 
# 1) Stacked Bar Plot 
barplot(data_mat, 
main = "FIRs vs Solved Cases", 
xlab = "Cities", 
        ylab = "Count", 
        col = c("red","green"), 
        legend = c("FIRs","Solved"), 
        beside = FALSE) 
# 2) Pie Chart (City-wise FIRs) 
pie(firs, 
    labels = city, 
    main = "City-wise FIRs", 
    col = rainbow(length(city))) 
# 3) Highest FIRs 
max_fir_city <- city[which.max(firs)] 
cat("City with highest FIRs:", max_fir_city, "\n") 
# 4) Highest Solved Cases 
max_solved_city <- city[which.max(solved)] 
cat("City with highest solved cases:", max_solved_city, "\n")