testing<-ggplot(PP1024, aes(x=Blocks, y=Count, color=factor(bb), shape=factor(bb)))  + geom_point() + 
labs(title="1KB Byte Partial Paging", x="Blocks", y="Ticks to complete") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6",  "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "magenta", "red" ))  +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c(0, 1, 2, 3, 4, 5, 6, 7)) 

