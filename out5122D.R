for (i in 0:7) {
	print(mean(FIFO2D512[which(FIFO2D512$bb == i & FIFO2D512$Iteration > 0),]$SF))
}
