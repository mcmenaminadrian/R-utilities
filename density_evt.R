library(ggplot2)
samplex=EVT_5[which(EVT_5$Iteration == 0 & EVT_5$Count > 1000000),]
text<-ggplot(samplex) +
geom_histogram(aes(x=Count, y=..density..),  col="grey") +
geom_density(aes(x=Count), col="blue", fill="white", alpha=0.1) +
labs(title="Distribution of completion times for benchmark 5")
