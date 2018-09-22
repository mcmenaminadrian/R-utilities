#!/usr/bin/env Rscript
require("smoother")
if (FALSE) {
lru2k_eff<-read.csv("/shared/storage/cs/staffstore/acm538/xmlheap/lru2keff.csv")
lru4k_eff<-read.csv("/shared/storage/cs/staffstore/acm538/xmlheap/lru4keff.csv")
opt_eff<-read.csv("/shared/storage/cs/staffstore/acm538/xmlheap/optOutput.csv")

lru2k_eff <- lru2k_eff[-1,]
lru4k_eff <- lru4k_eff[-1,]

lru2k_eff$Gap<-lru2k_eff[1,]$Ticks
for (i in 2:nrow(lru2k_eff))
{
	lru2k_eff[i,]$Gap <- lru2k_eff[i,]$Ticks - lru2k_eff[i - 1,]$Ticks
}	

lru4k_eff$Gap<-lru4k_eff[1,]$Ticks
for (i in 2:nrow(lru4k_eff))
{
	lru4k_eff[i,]$Gap <- lru4k_eff[i,]$Ticks - lru4k_eff[i - 1,]$Ticks
}	

opt_eff$Gap<-opt_eff[1,]$Ticks
for (i in 2:nrow(opt_eff))
{
	opt_eff[i,]$Gap <- opt_eff[i,]$Ticks - opt_eff[i - 1,]$Ticks
}
postscript("rawaccess.eps")	
lru2k_ema<-smth(lru2k_eff$Access/lru2k_eff$Gap, n=150, method="ema")
lru4k_ema<-smth(lru4k_eff$Access/lru4k_eff$Gap, n=150, method="ema")
opt_ema<-smth(opt_eff$Access/opt_eff$Gap, n=150, method="ema")
plot(lru4k_eff$Ticks, lru4k_ema, type="l", main="Total Memory accessed per Tick", sub="Black: 4k LRU  Red: 2k LRU  Blue: 4k OPT",
	xlab="Simulated Ticks", ylab="Bytes accessed")
lines(lru2k_eff$Ticks, lru2k_ema, col="red")
lines(opt_eff$Ticks, opt_ema, col="blue")
dev.off()
postscript("normalisedaccess.eps")
lru2k_ema<-smth(lru2k_eff$Access/(lru2k_eff$Gap * lru2k_eff$Threads), n=150, method="ema")
lru4k_ema<-smth(lru4k_eff$Access/(lru4k_eff$Gap * lru4k_eff$Threads), n=150, method="ema")
opt_ema<-smth(opt_eff$Access/(opt_eff$Gap * opt_eff$Threads), n=150, method="ema")
plot(lru4k_eff$Ticks, lru4k_ema, type="l", main="Total memory accessed per Tick by Thread", sub="Black: 4k LRU  Red: 2k LRU  Blue: 4k OPT",
	xlab="Simulated Ticks", ylab="Bytes accessed per Thread")
lines(lru2k_eff$Ticks, lru2k_ema, col="red")
lines(opt_eff$Ticks, opt_ema, col="blue")
dev.off()
}

lru2k_ema<-smth((lru2k_eff$Range)/(lru2k_eff$Pages * 2048 * lru2k_eff$Gap), n=150, method="ema")
lru4k_ema<-smth((lru4k_eff$Range)/(lru4k_eff$Pages * 4096 * lru4k_eff$Gap), n=150, method="ema")
opt_ema<-smth((opt_eff$Range)/(opt_eff$Pages * 4096 * opt_eff$Gap), n=150, method="ema")

lru2k_Aema<-smth((lru2k_eff$Access)/(lru2k_eff$Pages * 2048 * lru2k_eff$Gap), n=150, method="ema")
lru4k_Aema<-smth((lru4k_eff$Access)/(lru4k_eff$Pages * 4096 * lru4k_eff$Gap), n=150, method="ema")
opt_Aema<-smth((opt_eff$Access)/(opt_eff$Pages * 4096 * opt_eff$Gap), n=150, method="ema")
postscript("rangeaccess.eps")
plot(lru4k_eff$Ticks, lru4k_Aema, type="l", log="y", ylim=c(0.00000003,0.00002), main="Range and number of accesses per tick per byte compared",
	sub="Solid line: Accesses  Dotted line: Range", xlab="Simulated ticks", ylab="Proportion of loaded memory")
legend(2e10, 1e-5, c("OPT", "4k LRU",
	"2k LRU"), lty=c(1,1,1), col=c("blue", "red", "black"))
lines(lru2k_eff$Ticks, lru2k_ema, col="red", lty="dashed")
lines(opt_eff$Ticks, opt_ema, col="blue", lty="dashed")
lines(lru4k_eff$Ticks, lru4k_ema, lty="dashed")
lines(lru2k_eff$Ticks, lru2k_Aema, col="red")
lines(opt_eff$Ticks, opt_Aema, col="blue")
dev.off()
postscript("localityplot.eps")
lru2k_ema<-smth(lru2k_eff$Access/lru2k_eff$Range, n=150, method="ema")
lru4k_ema<-smth(lru4k_eff$Access/lru4k_eff$Range, n=150, method="ema")
opt_ema<-smth(opt_eff$Access/opt_eff$Range, n=150, method="ema")
plot(lru4k_eff$Ticks, lru4k_ema, type="l", main="Locality: higher number is stronger locality", sub="Black: 4k LRU  Red: 2k LRU  Blue: 4k OPT",
	xlab="Simulated Ticks", ylab="Ratio between access and range", log="y")
lines(lru2k_eff$Ticks, lru2k_ema, col="red")
lines(opt_eff$Ticks, opt_ema, col="blue")
dev.off()
