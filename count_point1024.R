#!/usr/bin/env Rscript

library("ggplot2")

for (i in 0:7)
{

mainString<-paste0("Completion times and blocks, benchmark ", i)
pngName<-paste0("BC", i, ".eps")

faults<-ggplot(subset(all1k, bb==i), aes(x=Blocks, y=Count, color=factor(method), shape=factor(method))) + geom_point()  +
labs(title=mainString, x="Blocked packets", y="Cycles to complete", sub="1KB pages") +
scale_color_brewer(palette="Dark2", name="Method") + scale_shape_manual(name="Method", values=c(1, 2, 3))
postscript(pngName)
print(faults)
dev.off()
}
# labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) 

