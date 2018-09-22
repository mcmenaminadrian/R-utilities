fileIn<-"512b_pp_1GA_master_";
fileOut<-"One";
pathway<-"/home/adrian/results/flash/";
for (bb in c(0:7)) {
	readIn<-paste(fileIn, bb, ".txt", sep="");
	objectIn<-paste(fileOut, bb, sep="");
	tempObj<-read.csv(paste(pathway, readIn, sep=""));
	tempObj$bb <- bb
	assign(objectIn, tempObj);
}

