i<-0
{
	svg(paste0("BusVarC", i, ".svg"))
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i, " (multibus)")
	p<-ggplot(data = BusVar[which(BusVar$bb == i),], aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='green', fill='pink') + ylim(0, 200000)
	print(p)
	dev.off()
}
