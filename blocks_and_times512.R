BlockTimes512<-data.frame(name=character(), bb=integer(), maxBlocks=double(), aveBlocks=double(), maxTime=double(), aveTime=double(), stringsAsFactors=FALSE)

btNames<-names(BlockTimes512)

for (i in c("PP512", "TR512", "PP1D512"))
{
	for (j in 0:7)
	{
		a<-i
		b<-j
		c<-eval(parse(text=paste0("max(", i, "[" ,i,  "$bb == ", j, "& ", i, "$Iteration == 0 ,]$Blocks)")))
		d<-eval(parse(text=paste0("mean(", i, "[" ,i,  "$bb == ", j, "& ", i, "$Iteration == 0 ,]$Blocks)")))
		e<-eval(parse(text=paste0("max(", i, "[" ,i,  "$bb == ", j, "& ", i, "$Iteration == 0 ,]$Count)")))
		f<-eval(parse(text=paste0("mean(", i, "[" ,i,  "$bb == ", j, "& ", i, "$Iteration == 0 ,]$Count)")))
		BlockTimes512<-rbind(BlockTimes512, c(a, b,c, d, e, f), make.row.names=FALSE, stringsAsFactors=FALSE)
	}
}

names(BlockTimes512)<-btNames
	
