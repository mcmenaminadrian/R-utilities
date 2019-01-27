totalTicks=data.frame(Benchmark=as.integer(1), Type=as.character("trad"), count=as.double(0.1),
	stringsAsFactors=FALSE)

for (i in 1:8) {
	totalTicks = rbind(totalTicks,
	c(i - 1,
	"trad",
	as.double((Trad1k[which(Trad1k$bb == i - 1 & Trad1k$Iteration == 0),]$Count))))
}

for (i in 1:8) {
	totalTicks = rbind(totalTicks, 
	c(i - 1,
	"pp",
	as.double(mean(PP1k[which(PP1k$bb == i - 1 & PP1k$Iteration == 0),]$Count))))
}

for (i in 1:8) {
	totalTicks = rbind(totalTicks, 
	c(i - 1,
	"2d",
	as.double(mean(PP2D1k[which(PP2D1k$bb == i - 1 & PP2D1k$Iteration == 0),]$Count))))
}

for (i in 1: 8) {
	totalTicks = rbind(totalTicks, 
	c(i - 1,
	"5d",
	as.double(mean(PP5D1k[which(PP5D1k$bb == i - 1 & PP5D1k$Iteration == 0),]$Count))))
}

totalTicks<-totalTicks[-1,]
colnames(totalTicks) = c("Benchmark", "Type", "Ticks")
totalTicks<-transform(totalTicks, Ticks = as.numeric(Ticks))
