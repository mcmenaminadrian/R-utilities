#!/usr/bin/env Rscript

library("ggplot2")

for (i in 0:7)
{

mainString<-paste0("Distribution of completion times with partial paging, benchmark ", i)
svgName<-paste0("ppDen_", i, ".svg")

p<-ggplot() + geom_density(aes(x=Count, fill=factor(1)), alpha=0.4, data=PP1024[which(PP1024$bb == i),])  +
geom_density(aes(x=Count, fill=factor(2)), alpha=0.4, data=PP512[which(PP512$bb == i & PP512$Iteration == 0),]) +
geom_density(aes(x=Count, fill=factor(3)), alpha=0.4, data=PP256[which(PP256$bb == i & PP256$Iteration == 0),]) +
geom_density(aes(x=Count, fill=factor(4)), alpha=0.4, data=PP128[which(PP128$bb == i & PP128$Iteration == 0),]) +
labs(title=mainString, x="Cycles", subtitle="All results for 1024 bytes, first iteration only for other sizes") +
scale_fill_discrete(name="Page Size", labels=c("1024 bytes", "512 bytes", "256 bytes", "128 bytes"))
svg(svgName)
print(p)
dev.off()
}
# labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) 

