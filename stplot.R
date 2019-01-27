effplot<-ggplot() + geom_point(data=EFFpp, aes(stfull, blocks, color="Partial")) +
geom_point(data=EFFtr, aes(stfull, blocks, color="Traditional")) + 
labs(title="Partial and traditional paging compared (1KB pages)", x="MMU service time", y="Blocks as share of completion time") +
scale_color_manual(name="Paging", values=c('red', 'blue'))
