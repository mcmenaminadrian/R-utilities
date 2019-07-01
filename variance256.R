bb = 0
Iteration = 0
sigma = as.double(0.0)
TFSVar<-data.frame(bb, Iteration, sigma)

for (i in 0:7) {
	for (j in 0:max(PP256[which(PP256$bb == i),]$Iteration)) {
		benchmark = i
		iteration = j
		variance = var(c(PP256[which(PP256$bb == i & PP256$Iteration == j),]$Count))
		TFSVar<-rbind(TFSVar, c(benchmark, iteration, sqrt(variance)))
	}
}
TFSVar<-TFSVar[-1,]
