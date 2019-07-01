numbers = c(1262292, 376891, 378280, 658567, 8295863, 332299, 13437582, 736058)
nameTemplate<-"TR1024_";
for (bb in c(0:7)){
	if (!exists(paste(nameTemplate, bb, sep=""))){
		next
	}
	cat(sprintf("Benchmark %i\n", bb))
	initialCount <- eval(parse( text = paste("mean(", nameTemplate, bb, "$Count[", nameTemplate, bb, "$Iteration==0])", sep="")))
        subCount<-eval(parse( text = paste("mean(", nameTemplate, bb, "$Count[", nameTemplate, bb, "$Iteration>0])", sep="")))
	maxInit <- eval(parse( text = paste("max(", nameTemplate, bb, "$Count[", nameTemplate, bb, "$Iteration==0])", sep="")))
        maxRest<-eval(parse( text = paste("max(", nameTemplate, bb, "$Count[", nameTemplate, bb, "$Iteration>0])", sep="")))
	initialBlocks<-eval(parse( text = paste("mean(", nameTemplate, bb, "$Blocks[", nameTemplate, bb, "$Iteration==0])", sep="")))
	subBlocks<-eval(parse( text = paste("mean(", nameTemplate, bb, "$Blocks[", nameTemplate, bb, "$Iteration>0])", sep="")))
        initialST<-eval(parse( text = paste("mean(", nameTemplate, bb, "$ST[", nameTemplate, bb, "$Iteration==0])", sep="")))
        subST<-eval(parse( text = paste("mean(", nameTemplate, bb, "$ST[", nameTemplate, bb, "$Iteration>0])", sep="")))
	initialHF<-eval(parse( text = paste("mean(", nameTemplate, bb, "$HF[", nameTemplate, bb, "$Iteration==0])", sep="")))
	subHF<-eval(parse( text = paste("mean(", nameTemplate, bb, "$HF[", nameTemplate, bb, "$Iteration>0])", sep="")))
	initialSF<-eval(parse( text = paste("mean(", nameTemplate, bb, "$SF[", nameTemplate, bb, "$Iteration==0])", sep="")))
	subSF<-eval(parse( text = paste("mean(", nameTemplate, bb, "$SF[", nameTemplate, bb, "$Iteration>0])", sep="")))
        initialBS<-initialBlocks/initialCount
	subBS<-subBlocks/subCount
	initialSS<-initialST/initialCount
	subSS<-subST/subCount
	effInitial<-numbers[bb + 1]/initialCount
	effSub<-numbers[bb + 1]/subCount
	adminInitial<- 1 - (initialBS + initialSS + effInitial)
	adminSub <- 1 - (subBS + subSS + effSub)
	cat(sprintf("Means for initial %s\n", initialCount))
	cat(sprintf("Means for rest %s\n", subCount))
	cat(sprintf("Max for initial %s\n", maxInit))
	cat(sprintf("Max for rest %s\n", maxRest))
	cat(sprintf("Mean ST for initial %s\n",initialST)) 
	cat(sprintf("Mean ST for rest %s\n", subST))
	cat(sprintf("Mean blocks for initial %s\n", initialBlocks))
	cat(sprintf("Mean blocks for rest %s\n", subBlocks))
	cat(sprintf("Mean HF for initial %s\n", initialHF))
	cat(sprintf("Mean HF for rest %s\n", subHF))
	cat(sprintf("Means SF for initial %s\n", initialSF))
	cat(sprintf("Mean SF for rest %s\n",subSF))
	cat(sprintf("Share for initial ST %s\n", initialSS))
	cat(sprintf("Share for rest ST %s\n", subSS))
	cat(sprintf("Share for initial blocks %s\n", initialBS))
	cat(sprintf("Share for sub blocks %s\n", subBS))
	cat(sprintf("Admin share initial %s\n", adminInitial))
	cat(sprintf("Admin share for rest %s\n", adminSub))
	cat(sprintf("Initial efficiency %s\n", effInitial))
	cat(sprintf("Subsequent efficiency %s\n", effSub))
	invisible(readline(prompt="Press [enter] to continue"))
}
