#!/usr/bin/env Rscript

library("ggplot2")
faults<-ggplot(subset(Big512, bb == 7), aes(y=Count, x=Blocks, color=factor(Method), shape=factor(Method))) + geom_point() + 
labs(title="512 byte Partial Paging, benchmark 7", x="Blocks", y="Cycles") +
scale_color_manual(name="Method", values=c(1:3)) +
scale_shape_manual(name="Method", values=c(1:3))

