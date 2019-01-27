bb = 0
Iteration = 0
sigma = as.double(0.0)
TradVar<-data.frame(bb, Iteration, sigma)

for (i in 0:7) {
	for (j in 0:max(Trad512[which(Trad512$bb == i),]$Iteration)) {
		benchmark = i
		iteration = j
		variance = var(c(Trad512[which(Trad512$bb == i & Trad512$Iteration == j),]$Count))
		TradVar<-rbind(TradVar, c(benchmark, iteration, sqrt(variance)))
	}
}
TradVar<-TradVar[-1,]
