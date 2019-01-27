fileIn<-"1024-pp-1cycledelay.txt_";
fileOut<-"PP1D1024_";
pathway<-"/home/adrian/results/flash/";
for (bb in c(0:7)) {
	readIn<-paste(fileIn, bb, ".txt", sep="");
	if (!file.exists(paste(pathway, readIn, sep=""))){
		next
	}
	objectIn<-paste(fileOut, bb, sep="");
	tempObj<-read.csv(paste(pathway, readIn, sep=""));
	tempObj$bb <- bb
	assign(objectIn, tempObj);
}

