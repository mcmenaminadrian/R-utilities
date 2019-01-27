testing<-ggplot(PP1k[which(PP1k$bb!=0 & PP1k$bb!=6),], aes(x=Blocks, y=Count, color=factor(bb), shape=factor(bb)))  + geom_point() +
labs(title="1KB Partial Paging", x="Blocks", y="Ticks to complete") +
scale_color_manual(name="Benchmark", labels=c( "1", "2", "3", "4", "5","7"), values=c("purple", "green", "brown", "pink4", "pink", "red" )) +
scale_shape_manual(name="Benchmark", labels=c("1", "2", "3", "4", "5","7"), values=c(0, 1, 2, 3, 4, 5, 7))
