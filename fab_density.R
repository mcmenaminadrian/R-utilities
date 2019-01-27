test<-ggplot(data=big512Blocks, aes(x=Blocks, y=Count, color=factor(mthod), shape=factor(mthod))) + geom_point() +
labs(title="All benchmarks with 512 byte pages") + scale_color_manual("Method", values=c(1:4)) +
scale_shape_manual("Method", values=c(1:4))
