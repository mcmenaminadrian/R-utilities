library(ggplot2)
coreStr = "PP512_"
pngStr = "LM512_"
for (i in 0:7)
{
	graphixx<-paste0("ggplot(", coreStr, i,
		", aes(x=", coreStr, i, "$Blocks, y=", coreStr, i,
		"$Count)) + geom_point() +",
		"  stat_smooth(method=\"lm\", col=\"blue\") + ",
		"ggtitle(\"Cycle count and blocks for benchmark ", i,
		", 512 byte partial paging\") + xlab(\"Blocks\") +",
		"ylab(\"Count\")"
	)
	graphix<-eval(parse(text=graphixx))
	eval(parse(text=paste0("png(\"", pngStr, i, ".png\")")))
	print(graphix)
	dev.off()
}
