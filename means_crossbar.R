nameTemplate<-"Backoff";
for (bb in c(0:7)){
	if (!exists(paste(nameTemplate, bb, sep=""))){
		next
	}
	cat(sprintf("Benchmark %i\n", bb))
	cat(sprintf("Means for initial %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$Count[", nameTemplate, bb, "$Iteration==0])", sep="")))))
	cat(sprintf("Means for rest %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$Count[", nameTemplate, bb, "$Iteration>0])", sep="")))))
	cat(sprintf("Mean ST for initial %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$ST[", nameTemplate, bb, "$Iteration==0])", sep="")))))
	cat(sprintf("Mean ST for rest %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$ST[", nameTemplate, bb, "$Iteration>0])", sep="")))))
	cat(sprintf("Mean blocks for initial %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$Blocks[", nameTemplate, bb, "$Iteration==0])", sep="")))))
	cat(sprintf("Mean blocks for rest %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$Blocks[", nameTemplate, bb, "$Iteration>0])", sep="")))))
	cat(sprintf("Mean HF for initial %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$HF[", nameTemplate, bb, "$Iteration==0])", sep="")))))
	cat(sprintf("Mean HF for rest %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$HF[", nameTemplate, bb, "$Iteration>0])", sep="")))))
	cat(sprintf("Means SF for initial %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$SF[", nameTemplate, bb, "$Iteration==0])", sep="")))))
	cat(sprintf("Mean SF for rest %s\n", eval(parse( text = paste("mean(", nameTemplate, bb, "$SF[", nameTemplate, bb, "$Iteration>0])", sep="")))))
	invisible(readline(prompt="Press [enter] to continue"))
}
