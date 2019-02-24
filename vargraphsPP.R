for (i in 0:7) 
{
	svg(paste0("PPvar", i, ".svg"))
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i, " (CLOCK p-paging)")
	p<-ggplot(data = PPVar[which(PPVar$bb == i),], aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='green', fill='pink')
	print(p)
	dev.off()
}
