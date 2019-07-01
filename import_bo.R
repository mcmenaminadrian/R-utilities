fileIn<-"crossbar-lessbackoff.txt_";
fileOut<-"BO_";
pathway<-"/home/adrian/results/flash/";
for (bb in c(0:7)) {
	readIn<-paste(fileIn, bb, ".txt", sep="");
	objectIn<-paste(fileOut, bb, sep="");
	tempObj<-read.csv(paste(pathway, readIn, sep=""));
	tempObj$bb <- bb
	assign(objectIn, tempObj);
}
BO<-rbind(BO_0, BO_1, BO_2, BO_3, BO_4, BO_5, BO_6, BO_7)

