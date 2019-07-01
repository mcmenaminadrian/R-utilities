#!/usr/bin/env Rscript

library("ggplot2")
faults<-ggplot(DIMSIL, aes(y=Count, x=Blocks, color=factor(bb), shape=factor(bb))) + geom_point() + 
labs(title="Completion times in dim silicon", x="Blocks", y="Completion time (cycles)") +
scale_color_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "7"), values=c("blue", "purple", "green", "brown", "pink4", "pink", "red" )) +
scale_shape_manual(name="Benchmark", labels=c("0", "1", "2", "3", "4", "5", "7"), values=c(0, 1, 2, 3, 4, 5, 7))

