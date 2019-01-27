#!/usr/bin/env Rscript

if (FALSE) {
PP512$TF <- 0
PP512$BPF <- 0
PP512$FPT <- 0

for (i in 1:nrow(PP512))
{
	TF <- PP512[i,]$HF + PP512[i,]$SF
	if (TF > 0) {
		BPF <- PP512[i,]$Blocks/TF
		FPT <- TF/PP512[i,]$Count
		PP512[i,]$TF <- TF
		PP512[i,]$BPF <-BPF
		PP512[i,]$FPT <- FPT
	}
}
}
library("ggplot2")
faults<-ggplot(PP512, aes(y=BPF, x=TF, color=factor(bb), shape=factor(bb))) + geom_point() + 
scale_x_log10() +
labs(title="512 byte Partial Paging", x="Total Faults (log)", y="Blocks per Fault") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c(0, 1, 2, 3, 4, 5, 6, 7))

