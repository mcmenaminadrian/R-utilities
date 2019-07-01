test<-ggplot(data=BlockTimes, aes(x=bb, y=as.numeric(aveTime), fill=name)) + 
geom_bar(stat="identity", position=position_dodge()) + labs(title="Mean completion time on first iteration with 1KB paging",
y="Cycles", x="Benchmark") + scale_fill_discrete(name="Paging\nMethod", breaks=c("PP1024", "TR1024", "PP1D1024"), labels=c("Partial", "Traditional", "Partial with delay"))
