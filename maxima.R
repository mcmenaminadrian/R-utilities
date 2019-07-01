fifoMAX_2 <- vector()
j <- 32
k <- nrow(FIFO512_2)
l <- k / j
for (i in 1:l) {
	lower <- (i -1) * j
	upper <- lower + j
	fifoMAX_2<-c(fifoMAX_2, max(FIFO512_2[lower:upper,]$Count))
} 


