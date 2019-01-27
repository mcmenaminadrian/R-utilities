test<-ggplot(data=big512Blocks[which(big512Blocks$bb == 3 & big512Blocks$Iteration < 5  ),], aes(x=Count, color=factor(mthod))) + geom_line(stat="density") +
labs(title="Benchmark 3, with 512 byte pages - first 5 iterations") + scale_color_manual("Method", values=c(1:4)) + 
geom_hline(col="white", yintercept=0)
