i<-3
{
	svg(paste0("BOvarC", i, ".svg"))
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i, " (crossbar)")
	p<-ggplot(data = CBVar[which(CBVar$bb == i),], aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='green', fill='pink') + ylim(0, 125000)
	print(p)
	dev.off()
}
