df1 <- data.frame(x = c(1,2,3,4), y = c("A","B","C","D")) 
df2 <- data.frame(x = c(3,4,5,6), y = c("C","D","E","F")) 
union_df <- rbind(df1, df2) 
union_df <- unique(union_df) 
cat("Union:\n") 
print(union_df)  
intersect_df <- merge(df1, df2) 
cat("Intersection:\n") 
print(intersect_df)  
diff_df <- setdiff(df1, df2) 
cat("Set Difference (df1 - df2):\n") 
print(diff_df)  
is_equal <- setequal(df1, df2) 
cat("Are df1 and df2 equal?:", is_equal, "\n")

set.seed(123) 
nums <- sample(0:100, 100, replace = TRUE) 
breaks <- seq(0, 100, by = 10) 
freq <- table(cut(nums, breaks = breaks, include.lowest = TRUE)) 
cat("Frequency Table:\n") 
print(freq) 
barplot(freq, 
        main = "Frequency Distribution (0-100)", 
        xlab = "Class Interval", 
        ylab = "Count", 
        col = "orange", 
        border = "brown") 