code<-c(1262292, 376891, 378280, 658567, 8295863, 332299, 13437582, 736058)

EFF2Dpp<-NULL
EFF5Dpp<-NULL
EFF2Dpp<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())
EFF5Dpp<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())

ColnamesPP <- names(EFF2Dpp)
ColnamesTR <- names(EFF5Dpp)

for (i in 1:nrow(PP2D1k))
{
	EFF2Dpp<-rbind(EFF2Dpp, c(PP2D1k[i,]$bb, (code[PP2D1k[i, ]$bb + 1])/PP2D1k[i, ]$Count, 
		PP2D1k[i,]$Blocks/PP2D1k[i,]$Count, PP2D1k[i,]$ST/PP2D1k[i,]$Count))
}

names(EFF2Dpp)<-ColnamesPP

for (i in 1:nrow(PP5D1k)){
	EFF5Dpp<-rbind(EFF5Dpp, c(PP5D1k[i,]$bb, (code[PP5D1k[i, ]$bb + 1])/PP5D1k[i, ]$Count, 
		PP5D1k[i,]$Blocks/PP5D1k[i,]$Count, PP5D1k[i,]$ST/PP5D1k[i, ]$Count))
}

names(EFF5Dpp)<-ColnamesTR
