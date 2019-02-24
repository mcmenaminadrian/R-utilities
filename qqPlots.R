nameData<-"PP1024_"

for (i in 0:7)
{
	nameJoin<-paste0( nameData, i, "$Count")
	stringTitle<-paste0("\"1KB partial paging with benchmark ", i, "\"")

	stringToEval<-paste0("qqPlot(", nameJoin, ", main=", stringTitle, ", ylab=\"Cycles\")")
	eval(parse(text=paste0("postscript(\"qqpp1024_", i, ".eps\")")))
	eval(parse(text=stringToEval))
	dev.off()
}
