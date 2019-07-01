fileInA<-"buses-eightbuses.txt_"
fileInB<-"buses-eightbuses-grouped.txt_"
fileOutA<-"EB_";
fileOutB<-"EBG_"
pathway<-"/home/adrian/results/flash/";
for (bb in c(0:7)) {
	readIn<-paste(fileInA, bb, ".txt", sep="");
	objectIn<-paste(fileOutA, bb, sep="");
	tempObj<-read.csv(paste(pathway, readIn, sep=""));
	tempObj$bb <- bb
	assign(objectIn, tempObj);
	readIn<-paste(fileInB, bb, ".txt", sep="");
	objectIn<-paste(fileOutB, bb, sep="");
	tempObj<-read.csv(paste(pathway, readIn, sep=""));
	tempObj$bb <- bb
	assign(objectIn, tempObj);
}
EB<-rbind(EB_0, EB_1, EB_2, EB_3, EB_4, EB_5, EB_6, EB_7)
EBG<-rbind(EBG_0, EBG_1, EBG_2, EBG_3, EBG_4, EBG_5, EBG_6, EBG_7)

