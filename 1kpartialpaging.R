testing<-ggplot(PP1D1K, aes(x=Blocks, y=Count, color=factor(bb), shape=factor(bb)))  + geom_point() +
labs(title="1KB Partial Pagingi with delay", x="Blocks", y="Ticks to complete") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "orange", "red" )) +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c(0, 1, 2, 3, 4, 5, 6, 7))

