fileIn<-"1k_pages_1GA_correct_CPI.txt_";
fileOut<-"OnePP_";
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

