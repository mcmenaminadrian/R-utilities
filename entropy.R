emptyEntropy<-NULL
rwEntropy<-NULL
roEntropy<-NULL
totalEnt<-NULL
for (i in 1:124)
{
	emptyEntropy<-c(emptyEntropy, 255 * (255 - i) / 255 * log2(255/(255 - i)))
	rwEntropy<-c(rwEntropy, 200 * 255 * i / 255 * 0.3 * 0.5 * 0.005 * log2(1/(i/255 * 0.3 * 0.5 * 0.005)))
	roEntropy<-c(roEntropy, 100 * 255 * i / 255 * 0.7 * 0.5 * 0.01 * log2(1/(i/ 255 * 0.7 * 0.5 * 0.01)))
	totalEnt <- c(totalEnt, (emptyEntropy + rwEntropy + roEntropy))
}
plot(roEntropy + rwEntropy + emptyEntropy, col="red", main="Entropy in memory connect", ylab="H", xlab="Blocked packets", type="l")
lines(roEntropy, col="pink")
lines(rwEntropy, col="blue")
lines(emptyEntropy, col="green")
abline(v=77)
