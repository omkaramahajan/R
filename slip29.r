country <- c("Cuba","Australia","Japan","Nepal","Egypt","India")
production <- c(320,300,50,10,9,200)

barplot(production, names.arg=country, col="skyblue",
        main="Production of Sugar",
        xlab="Country", ylab="Production (in lakh quintals)")



class <- c("70-80","80-90","90-100","100-110","110-120","120-130","130-140","140-150")
f <- c(3,8,14,35,28,16,10,5)
mid <- c(75,85,95,105,115,125,135,145)
N <- sum(f)
mean <- sum(f*mid)/N
cf <- cumsum(f)
h <- 10
median_class <- which(cf >= N/2)[1]
L <- 70 + (median_class-1)*10
cf_prev <- ifelse(median_class==1,0,cf[median_class-1])
f_med <- f[median_class]
median <- L + ((N/2 - cf_prev)/f_med)*h
modal_class <- which.max(f)
L1 <- 70 + (modal_class-1)*10
f1 <- f[modal_class]
f0 <- ifelse(modal_class==1,0,f[modal_class-1])
f2 <- ifelse(modal_class==length(f),0,f[modal_class+1])
mode <- L1 + ((f1 - f0)/(2*f1 - f0 - f2))*h
mean
median
mode        