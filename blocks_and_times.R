BlockTimes<-data.frame(name=character(), bb=integer(), maxBlocks=double(), aveBlocks=double(), maxTime=double(), aveTime=double(), stringsAsFactors=FALSE)

btNames<-names(BlockTimes)

for (i in c("PP1024", "TradOne", "PP1D1K"))
{
	for (j in 0:7)
	{
		a<-i
		b<-j
		c<-eval(parse(text=paste0("max(", i, "[" ,i,  "$bb == ", j, "& ", i, "$Iteration == 0 ,]$Blocks)")))
		d<-eval(parse(text=paste0("mean(", i, "[" ,i,  "$bb == ", j, "& ", i, "$Iteration == 0 ,]$Blocks)")))
		e<-eval(parse(text=paste0("max(", i, "[" ,i,  "$bb == ", j, "& ", i, "$Iteration == 0 ,]$Count)")))
		f<-eval(parse(text=paste0("mean(", i, "[" ,i,  "$bb == ", j, "& ", i, "$Iteration == 0 ,]$Count)")))
		BlockTimes<-rbind(BlockTimes, c(a, b,c, d, e, f), make.row.names=FALSE, stringsAsFactors=FALSE)
	}
}

names(BlockTimes)<-btNames
	
