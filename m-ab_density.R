test<-ggplot(subset(Big512, bb==0 & Iteration < 15), aes(x=Count, fill=factor(Method))) + geom_density(alpha=0.4) +
labs(title="Benchmark 0, with 512 byte pages - first 15 iterations") + scale_color_manual(values=c(1:3)) + labs(fill="Method")
