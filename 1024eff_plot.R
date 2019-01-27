testing<-ggplot(EFFtr, aes(x=stfull, y=blocks, color=factor(bb), shape=factor(bb)))  + geom_point() + 
labs(title="1KB Traditional Paging", x="Proprtion of time servicing memory requests", y="Proportion of time packets blocked") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "red" ))  +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "7"), values=c(0, 1, 2, 3, 4, 5, 7)) 

