bb = 0
Iteration = 0
sigma = as.double(0.0)
FIFOVar<-data.frame(bb, Iteration, sigma)

for (i in 0:7) {
	for (j in 0:max(FIFO512[which(FIFO512$bb == i),]$Iteration)) {
		benchmark = i
		iteration = j
		variance = var(c(FIFO512[which(FIFO512$bb == i & FIFO512$Iteration == j),]$Count))
		FIFOVar<-rbind(FIFOVar, c(benchmark, iteration, sqrt(variance)))
	}
}
FIFOVar<-FIFOVar[-1,]
