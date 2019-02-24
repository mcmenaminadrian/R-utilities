test<-ggplot(data=BlockTimes512, aes(x=bb, y=as.numeric(aveBlocks), fill=name)) + 
geom_bar(stat="identity", position=position_dodge()) + labs(title="Mean blocks on first iteration with 512 byte paging",
y="Cycles", x="Benchmark") + scale_fill_discrete(name="Paging\nMethod", breaks=c("PP512", "TR512", "PP1D512"), labels=c("Partial", "Traditional", "Partial with delay"))
