code<-c(1262292, 376891, 378280, 658567, 8295863, 332299, 13437582, 736058)

EFFpp<-NULL
EFFtr<-NULL
EFFpp<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())
EFFtr<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())

ColnamesPP <- names(EFFpp)
ColnamesTR <- names(EFFtr)

for (i in 1:nrow(PP1024))
{
	EFFpp<-rbind(EFFpp, c(PP1024[i,]$bb, (code[PP1024[i, ]$bb + 1])/PP1024[i, ]$Count, 
		PP1024[i,]$Blocks/PP1024[i,]$Count, PP1024[i,]$ST/PP1024[i,]$Count))
}

names(EFFpp)<-ColnamesPP

for (i in 1:nrow(TradOne)){
	EFFtr<-rbind(EFFtr, c(TradOne[i,]$bb, (code[TradOne[i, ]$bb + 1])/TradOne[i, ]$Count, 
		TradOne[i,]$Blocks/TradOne[i,]$Count, TradOne[i,]$ST/TradOne[i, ]$Count))
}

names(EFFtr)<-ColnamesTR
