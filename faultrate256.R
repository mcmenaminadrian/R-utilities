#!/usr/bin/env Rscript

PP256$TF <- 0
PP256$BPF <- 0
PP256$FPT <- 0

for (i in 1:nrow(PP256))
{
	TF <- PP256[i,]$HF + PP256[i,]$SF
	if (TF > 0) {
		BPF <- PP256[i,]$Blocks/TF
		FPT <- TF/PP256[i,]$Count
		PP256[i,]$TF <- TF
		PP256[i,]$BPF <-BPF
		PP256[i,]$FPT <- FPT
	}
}
