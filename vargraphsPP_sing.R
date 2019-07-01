i<-7
{
	svg(paste0("PPvarC", i, ".svg"))
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i, " (CLOCK p-paging)")
	p<-ggplot(data = PPVar[which(PPVar$bb == i),], aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='green', fill='pink') + ylim(0, 350000)
	print(p)
	dev.off()
}
