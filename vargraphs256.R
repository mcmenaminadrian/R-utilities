for (i in 0:7) {
	svg(paste0("256var", i, ".svg"))
	mainTitle<-paste0("Standard deviation of completion times for benchmark ", i)
	p<-ggplot(data = TFSVar[which(TFSVar$bb == i),], aes(x=Iteration, y=sigma)) +
	geom_point() +
	labs(title=mainTitle, y=expression(paste(sigma, " (Cycles)")), x="Iteration") + 
	geom_smooth(method='auto', color='red', fill='purple')
	print(p)
	dev.off()
}
