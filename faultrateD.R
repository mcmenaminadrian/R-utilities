#!/usr/bin/env Rscript

PP2D1k$TF <- 0
PP5D1k$TF <- 0
PP2D1k$BPF <- 0
PP5D1k$FPT <- 0
PP5D1k$BPF <- 0
PP2D1k$FPT <- 0

for (i in 1:nrow(PP2D1k))
{
	TF <- PP2D1k[i,]$HF + PP2D1k[i,]$SF
	if (TF > 0) {
		BPF <- PP2D1k[i,]$Blocks/TF
		FPT <- TF/PP2D1k[i,]$Count
		PP2D1k[i,]$TF <- TF
		PP2D1k[i,]$BPF <-BPF
		PP2D1k[i,]$FPT <- FPT
	}
}

for (i in 1:nrow(PP5D1k))
{
	TF <- PP5D1k[i,]$HF + PP5D1k[i,]$SF
	if (TF > 0) {
		BPF <- PP5D1k[i,]$Blocks/TF
		FPT <- TF/PP5D1k[i,]$Count
		PP5D1k[i,]$TF <- TF
		PP5D1k[i,]$BPF <-BPF
		PP5D1k[i,]$FPT <- FPT
	}
}


