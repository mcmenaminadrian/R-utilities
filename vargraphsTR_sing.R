i<-7
{
	svg(paste0("TRvariC", i, ".svg"))
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i, " (Traditional paging)")
	p<-ggplot(data = TRVar[which(TRVar$bb == i),], aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='blue', fill='yellow') + ylim(0, 350000)
	print(p)
	dev.off()
}
