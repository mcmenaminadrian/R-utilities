code<-c(1262292, 376891, 378280, 658567, 8295863, 332299, 13437582, 736058)

EFF1d<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())

ColnamesPP <- names(EFF1d)

for (i in 1:nrow(PP1D1K))
{
	rowAdd<-c(PP1D1K[i,]$bb, (code[PP1D1K[i, ]$bb + 1])/as.numeric(PP1D1K[i, ]$Count), 
		PP1D1K[i,]$Blocks/PP1D1K[i,]$Count, PP1D1K[i,]$ST/PP1D1K[i,]$Count)
	EFF1d<-rbind(EFF1d, rowAdd)
}

names(EFF1d)<-ColnamesPP
