testing<-ggplot(PP1024[which(PP1024$bb > 0 & PP1024$bb != 6 & PP1024$bb != 4),], aes(x=Blocks, y=Count, color=factor(bb), shape=factor(bb)))  + geom_point() + 
labs(title="1KB Byte Partial Paging", x="Blocks", y="Ticks to complete") +
scale_color_manual(name="Benchmark", labels=c("1", "2", "3", "5", "7"), values=c( "purple", "green", "brown", "pink", "red" ))  +
scale_shape_manual(name="Benchmark", labels=c("1", "2", "3", "5", "7"), values=c(1, 2, 3, 5, 7)) 

