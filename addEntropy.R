#!/usr/bin/env_Rscript
args<-commandArgs(trailingOnly=TRUE)
baseName<-"FIFO512_"

for (i in 0:7)
{
	objectName<-paste0(baseName, i)
	
	q<-parse(text=paste0(objectName, "$BPT = 0"))
	eval(q)
	eval(parse(text=paste0(objectName, "$entropy = 0")))
	for (j in 1:nrow(eval(parse(text=objectName))))
	{
		systemBlocks<-eval(parse(text=paste0(objectName,
			"[j, ]$Blocks / ",
			objectName, "[j, ]$Count * 128")))
		entropy<-exp(log(systemBlocks ** 1.06253) + 1.88232)
		eval(parse(text=paste0(objectName, "[j,]$BPT = ", systemBlocks)))
		eval(parse(text=paste0(objectName, "[j,]$entropy =", entropy)))
	}
}
