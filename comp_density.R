test<-ggplot(data=BigPage[which(BigPage$bb == 7 & BigPage$Iteration == 0),], aes(x=Count, color=factor(PS))) + geom_line(stat="density") +
labs(title="Partial paging: Benchmark 7 - different page sizes", subtitle="Initial iteration only") + scale_color_manual("Page Size", values=c(1:4)) + 
geom_hline(col="white", yintercept=0)
