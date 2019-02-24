test<-ggplot(data=Big512[which(Big512$bb == 0 & Big512$Iteration < 15  ),], aes(x=Count, color=factor(Method))) + geom_line(stat="density") +
labs(title="Benchmark 0, with 512 byte pages - first 15 iterations") + scale_color_manual("Method", values=c(1:3)) + 
geom_hline(col="white", yintercept=0)
