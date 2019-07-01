testing<-ggplot(EFFpp, aes(x=stfull, y=efficiency, color=factor(bb), shape=factor(bb)))  + geom_point() + 
labs(title="1KB Partial Paging", x="Proportion of time servicing memory requests", y="Efficiency of execution") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5",  "6", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "magenta", "red" ))  +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "6", "7"), values=c(0, 1, 2, 3, 4, 5, 6, 7)) 

testing2<-ggplot(EFFtr, aes(x=stfull, y=efficiency, color=factor(bb), shape=factor(bb)))  + geom_point() + 
labs(title="1KB Traditional Paging", x="Proportion of time servicing memory requests", y="Efficiency of execution") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "red" ))  +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "7"), values=c(0, 1, 2, 3, 4, 5, 7)) 
