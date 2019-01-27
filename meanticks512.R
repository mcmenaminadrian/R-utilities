totalBlocks512=data.frame(Benchmark=as.integer(1), Type=as.character("trad"), count=as.double(0.1),
	stringsAsFactors=FALSE)

for (i in 1:8) {
	totalBlocks512 = rbind(totalBlocks512,
	c(i - 1,
	"trad",
	as.double((Trad512[which(Trad512$bb == i - 1 & Trad512$Iteration == 0),]$Blocks))))
}

for (i in 1:8) {
	totalBlocks512 = rbind(totalBlocks512, 
	c(i - 1,
	"pp",
	as.double(mean(PP512[which(PP512$bb == i - 1 & PP512$Iteration == 0),]$Blocks))))
}

for (i in 1:8) {
	totalBlocks512 = rbind(totalBlocks512, 
	c(i - 1,
	"2d",
	as.double(mean(PP2D512[which(PP2D512$bb == i - 1 & PP2D512$Iteration == 0),]$Blocks))))
}

for (i in 1: 8) {
	totalBlocks512 = rbind(totalBlocks512, 
	c(i - 1,
	"5d",
	as.double(mean(PP5D512[which(PP5D512$bb == i - 1 & PP5D512$Iteration == 0),]$Blocks))))
}

totalBlocks512<-totalBlocks512[-1,]
colnames(totalBlocks512) = c("Benchmark", "Type", "Blocks")
totalBlocks512<-transform(totalBlocks512, Ticks = as.numeric(Blocks))
