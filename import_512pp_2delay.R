fileIn<-"512b_pp_CPIfix_2delay.txt_";
fileOut<-"TwoDELAY512pp_";
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

