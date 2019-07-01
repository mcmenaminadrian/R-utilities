bb = 0
Iteration = 0
sigma = as.double(0.0)
BusVar<-data.frame(bb, Iteration, sigma)

for (i in 0:7) {
	for (j in 0:max(EB[which(EB$bb == i),]$Iteration)) {
		benchmark = i
		iteration = j
		variance = var(c(EB[which(EB$bb == i & EB$Iteration == j),]$Count))
		BusVar<-rbind(BusVar, c(benchmark, iteration, sqrt(variance)))
	}
}
BusVar<-BusVar[-1,]
