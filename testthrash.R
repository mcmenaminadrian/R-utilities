#!/usr/bin/env Rscript
tknewic <- read.csv("~/newmeths.txt", header=TRUE)
tknewcumsum<-data.frame(count=tknewic$Count, tkcumnewthreadsum=cumsum(rowSums(tknewic[,-1], na.rm=TRUE)))
write.table(tknewcumsum, file="Noutput.txt")
