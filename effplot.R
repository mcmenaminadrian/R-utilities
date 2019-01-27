effplot<-ggplot() + geom_point(data=EFF512pp, aes(PP512$BPF, efficiency, color="Partial")) +
#geom_point(data=EFFtr, aes(Trad1k$Blocks, efficiency, color="Traditional")) + 
geom_point(data=EFF5122d, aes(PP2D512$BPF, efficiency, color="2 tick delay")) +
geom_point(data=EFF5125d, aes(PP5D512$BPF, efficiency, color="5 tick delay")) + scale_x_log10() +
labs(title="Impact of bitmap delays on performance (512 byte paging)", x="Blocks per fault (log)", y="Efficiency of execution") +
scale_color_manual(name="Paging", values=c('purple', 'green', 'red'))
