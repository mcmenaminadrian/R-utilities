#for (i in 0:7) 
i<-7
{
	svg(paste0("TRvar", i, ".svg"))
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i, " (Traditional paging)")
	p<-ggplot(data = TRVar[which(TRVar$bb == i),], aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='blue', fill='yellow')
	print(p)
	dev.off()
}
