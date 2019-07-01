fileIn<-"crossbar-standardbackoff.txt_";
fileOut<-"CBS_";
pathway<-"/home/adrian/results/flash/";
for (bb in c(0:7)) {
	readIn<-paste(fileIn, bb, ".txt", sep="");
	objectIn<-paste(fileOut, bb, sep="");
	tempObj<-read.csv(paste(pathway, readIn, sep=""));
	tempObj$bb <- bb
	assign(objectIn, tempObj);
}
CBS<-rbind(CBS_0, CBS_1, CBS_2, CBS_3, CBS_4, CBS_5, CBS_6, CBS_7)

