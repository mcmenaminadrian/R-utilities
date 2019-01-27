testing<-ggplot(PP1k[which(PP1k$bb != 6),], aes(x=Blocks, y=Count, color=factor(bb), shape=factor(bb)))  + geom_point() + 
labs(title="1KB Byte Partial Paging", x="Blocks(log)", y="Ticks to complete (log)") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5",  "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "red" )) + scale_y_log10(lim=c(4e05, 4e07)) + scale_x_log10(lim=c(1, 3e07)) +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "7"), values=c(0, 1, 2, 3, 4, 5, 7)) 

