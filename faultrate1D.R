#!/usr/bin/env Rscript

if (TRUE) {
PP1D1K$TF <- 0
PP1D1K$BPF <- 0
PP1D1K$FPT <- 0

for (i in 1:nrow(PP1D1K))
{
	TF <- PP1D1K[i,]$HF + PP1D1K[i,]$SF
	if (TF > 0) {
		BPF <- PP1D1K[i,]$Blocks/TF
		FPT <- TF/PP1D1K[i,]$Count
		PP1D1K[i,]$TF <- TF
		PP1D1K[i,]$BPF <-BPF
		PP1D1K[i,]$FPT <- FPT
	}
}
}
if (FALSE) {
library("ggplot2")
faults<-ggplot(PP1D1K, aes(y=BPF, x=TF, color=factor(bb), shape=factor(bb))) + geom_point() + 
scale_x_log10() +
labs(title="512 byte Partial Paging", x="Total Faults (log)", y="Blocks per Fault") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c(0, 1, 2, 3, 4, 5, 6, 7))
}
