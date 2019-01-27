bb = 0
Iteration = 0
sigma = as.double(0.0)
DelayVar<-data.frame(bb, Iteration, sigma)

for (i in 0:7) {
	for (j in 0:max(FIFO2D512[which(FIFO2D512$bb == i),]$Iteration)) {
		benchmark = i
		iteration = j
		variance = var(c(FIFO2D512[which(FIFO2D512$bb == i & FIFO2D512$Iteration == j),]$Count))
		DelayVar<-rbind(DelayVar, c(benchmark, iteration, sqrt(variance)))
	}
}
DelayVar<-DelayVar[-1,]
