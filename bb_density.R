test<-ggplot(data=PP1k, aes(x=BPF, color=factor(bb))) + geom_line(stat="density") +
labs(title="Blocks per fault with 1KB partial paging") + scale_color_manual("Benchmarks", values=c(1:8))
