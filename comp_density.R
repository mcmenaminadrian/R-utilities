#!/usr/bin/env Rscript

library("ggplot2")

for (i in 0:7)
{

mainString<-paste0("Distribution of completion times, benchmark ", i)
pngName<-paste0("dB_", i, ".png")

faults<-ggplot() + geom_point(alpha = 0.4, aes(y=Count, x=Blocks, shape=factor(1), col=factor(1)), data=PP512[which(PP512$bb == i),])  +
geom_point(alpha=0.4, aes(y=Count, x=Blocks, shape=factor(2), col=factor(2)), data=PP256[which(PP256$bb == i),]) +
labs(title=mainString, x="Blocks", y="Cycles", sub="512 and 256 pages compared") +
scale_shape_discrete(name="Page Size", labels=c("512 bytes", "256 bytes")) +
scale_colour_discrete(name="Page Size", labels=c("512 bytes", "256 bytes"))
png(pngName)
print(faults)
dev.off()
}
# labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) 

