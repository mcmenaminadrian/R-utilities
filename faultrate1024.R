#!/usr/bin/env Rscript

if (TRUE) {
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
if (FALSE) {
library("ggplot2")
faults<-ggplot(PP1024, aes(x=BPF, fill=factor(bb))) + geom_density(alpha=0.4)  +
labs(title="1024 byte Partial Paging, blocks per fault", x="Blocks per Fault") +
scale_fill_brewer(palette="Dark2", name="Benchmark")
# labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) 
}
