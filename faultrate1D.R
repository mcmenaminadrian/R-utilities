#!/usr/bin/env Rscript

if (FALSE) {
PP1024$TF <- 0
PP1024$BPF <- 0
PP1024$FPT <- 0

for (i in 1:nrow(PP1024))
{
	TF <- PP1024[i,]$HF + PP1024[i,]$SF
	if (TF > 0) {
		BPF <- PP1024[i,]$Blocks/TF
		FPT <- TF/PP1024[i,]$Count
		PP1024[i,]$TF <- TF
		PP1024[i,]$BPF <-BPF
		PP1024[i,]$FPT <- FPT
	}
}
}
if (TRUE) {
library("ggplot2")
faults<-ggplot(PP1024, aes(y=BPF, x=TF, color=factor(bb), shape=factor(bb))) + geom_point() + 
scale_x_log10() +
labs(title="1024 Byte Partial Paging", x="Total Faults (log)", y="Blocks per Fault") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c(0, 1, 2, 3, 4, 5, 6, 7))
}
