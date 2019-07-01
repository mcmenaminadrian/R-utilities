i<-7
{
	svg(paste0("FifovariC", i, ".svg"))
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i, " (FIFO)")
	p<-ggplot(data = FIFOVar[which(FIFOVar$bb == i),], aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='red', fill='purple') + ylim(0, 350000)
	print(p)
	dev.off()
}
