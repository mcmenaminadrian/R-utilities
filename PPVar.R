bb = 0
Iteration = 0
sigma = as.double(0.0)
PPVar<-data.frame(bb, Iteration, sigma)

for (i in 0:7) {
	for (j in 0:max(PP512[which(PP512$bb == i),]$Iteration)) {
		benchmark = i
		iteration = j
		variance = var(c(PP512[which(PP512$bb == i & PP512$Iteration == j),]$Count))
		PPVar<-rbind(PPVar, c(benchmark, iteration, sqrt(variance)))
	}
}
PPVar<-PPVar[-1,]
