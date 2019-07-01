#!/usr/bin/env Rscript

library("ggplot2")

for (i in 0:7)
{

mainString<-paste0("Distribution of completion times, benchmark ", i)
pngName<-paste0("BB", i, ".png")

faults<-ggplot(subset(all1k, bb==i), aes(x=Count, fill=factor(Method))) + geom_density(alpha=0.4)  +
labs(title=mainString, x="Cycles", sub="1KB pages") +
scale_fill_brewer(palette="Set3", name="Method")
png(pngName)
print(faults)
dev.off()
}
# labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) 

