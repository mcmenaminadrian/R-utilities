biggest <- vector()
j <- 32
k <- nrow(FIFO512_5)
l <- k / j
for (i in 1:l) {
	lower <- (i -1) * j + 1
	upper <- i * j
	biggest<-c(biggest, max(FIFO512_5[lower:upper,]$Count))
} 


