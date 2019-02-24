big3D <- vector()
j <- 64
k <- nrow(PP512_3)
l <- k / j
for (i in 1:l) {
	lower <- (i -1) * j + 1
	upper <- i * j
	big3D<-c(big3D, max(PP512_3[lower:upper,]$Count))
} 


