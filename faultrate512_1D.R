#!/usr/bin/env Rscript

if (TRUE) {
PP1D512$TF <- 0
PP1D512$BPF <- 0
PP1D512$FPT <- 0

for (i in 1:nrow(PP1D512))
{
	TF <- PP1D512[i,]$HF + PP1D512[i,]$SF
	if (TF > 0) {
		BPF <- PP1D512[i,]$Blocks/TF
		FPT <- TF/PP1D512[i,]$Count
		PP1D512[i,]$TF <- TF
		PP1D512[i,]$BPF <-BPF
		PP1D512[i,]$FPT <- FPT
	}
}
}
if (FALSE) {
library("ggplot2")
faults<-ggplot(PP1D512, aes(y=BPF, x=TF, color=factor(bb), shape=factor(bb))) + geom_point() + 
scale_x_log10() +
labs(title="512 byte Partial Paging", x="Total Faults (log)", y="Blocks per Fault") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c(0, 1, 2, 3, 4, 5, 6, 7))
}
