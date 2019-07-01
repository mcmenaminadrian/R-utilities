i<-3 
	svg(paste0("256varC", i, ".svg"))
	blinder<-TFSVar[which(TFSVar$bb == i),]
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i)
	p<-ggplot(data = head(blinder, -1), aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='#b47846', fill='#4682b4') + ylim(0, 125000)
	print(p)
	dev.off()
