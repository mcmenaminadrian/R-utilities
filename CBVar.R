bb = 0
Iteration = 0
sigma = as.double(0.0)
CBVar<-data.frame(bb, Iteration, sigma)

for (i in 0:7) {
	for (j in 0:max(CBS[which(CBS$bb == i),]$Iteration)) {
		benchmark = i
		iteration = j
		variance = var(c(CBS[which(CBS$bb == i & CBS$Iteration == j),]$Count))
		CBVar<-rbind(CBVar, c(benchmark, iteration, sqrt(variance)))
	}
}
CBVar<-CBVar[-1,]
