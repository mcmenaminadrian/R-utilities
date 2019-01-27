svg("mrp.svg")
test<-ggplot(data=bigmrp, aes(x=maj_share, y=Support.w.o.DK, col=factor(party))) +
geom_point(alpha=0.4) +
scale_color_manual(values=c('blue', 'green', 'red', 'orange', 'yellow', 'purple', 'black'), name="Party", labels=c("Con", "Grn", "Lab", "LD", "PC", "SNP", "Spk")) +
geom_hline(yintercept=0.5, col="black") + xlab("majority") + ylab("Support for People's Vote")
print(test)
dev.off()

