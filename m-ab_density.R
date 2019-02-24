test<-ggplot(subset(Big512, bb==7 & Iteration < 5), aes(x=Count, fill=factor(Method))) + geom_density(alpha=0.4) +
labs(title="Benchmark 7, with 512 byte pages, first 5 iterations") + scale_color_manual(values=c(1:3)) + labs(fill="Method")
