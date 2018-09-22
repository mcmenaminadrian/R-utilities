#!/usr/bin/env Rscript
require("smoother")

lru2k_eff<-read.csv("/shared/storage/cs/staffstore/acm538/xmlheap/lru2keff.csv")
lru4k_eff<-read.csv("/shared/storage/cs/staffstore/acm538/xmlheap/lru4keff.csv")
opt_eff<-read.csv("/shared/storage/cs/staffstore/acm538/xmlheap/optOutput.csv")

lru2k_ema<-smth(lru2k_eff$Access/(2 * lru2k_eff$Pages), n=200, method="ema")
lru4k_ema<-smth(lru4k_eff$Access/(4 * lru4k_eff$Pages), n=200, method="ema")
opt_ema<-smth(opt_eff$Access/(4 * opt_eff$Pages), n=200, method="ema")
postscript("access-page.eps")
plot(lru4k_eff$Ticks, lru4k_ema, type="l", main="Accesses per 1KB of loaded memory (smoothed average)", sub="Black: 4k LRU  Red: 2k LRU  Blue: 4k OPT",
	xlab="Simulated Ticks", ylab="Access per 1KB of paged-in memory")
lines(lru2k_eff$Ticks, lru2k_ema, col="red")
lines(opt_eff$Ticks, opt_ema, col="blue")
dev.off()

lru2k_Rema<-smth(lru2k_eff$Range/(2048 * lru2k_eff$Pages), n=200, method="ema")
lru4k_Rema<-smth(lru4k_eff$Range/(4096 * lru4k_eff$Pages), n=200, method="ema")
opt_Rema<-smth(opt_eff$Range/(4096 * opt_eff$Pages), n=200, method="ema")
postscript("range-page.eps")
plot(lru4k_eff$Ticks, lru4k_Rema, type="l", main="Proportion of loaded pages accessed", sub="Black: 4k LRU  Red: 2k LRU  Blue: 4k OPT",
	xlab="Simulated Ticks", ylab="Proportion of pages accessed")
lines(lru2k_eff$Ticks, lru2k_Rema, col="red")
lines(opt_eff$Ticks, opt_Rema, col="blue")
dev.off()

