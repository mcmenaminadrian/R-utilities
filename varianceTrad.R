bb = 0
Iteration = 0
sigma = as.double(0.0)
TRVar<-data.frame(bb, Iteration, sigma)

for (i in 0:7) {
if (i == 6) { next}
	for (j in 0:max(TR512[which(TR512$bb == i),]$Iteration)) {
		benchmark = i
		iteration = j
		variance = var(c(TR512[which(TR512$bb == i & TR512$Iteration == j),]$Count))
		TRVar<-rbind(TRVar, c(benchmark, iteration, sqrt(variance)))
	}
}
TRVar<-TRVar[-1,]
