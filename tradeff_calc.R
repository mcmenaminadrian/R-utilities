code<-c(1262292, 376891, 378280, 658567, 8295863, 332299, 13437582, 736058)

EFF512tr<-NULL
EFF512pp<-NULL
EFF5121d<-NULL
EFF512tr<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())
EFF512pp<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())
EFF5121d<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())
ColnamesTR <- names(EFF512pp)

for (i in 1:nrow(PP512))
{
	EFF512pp<-rbind(EFF512pp, c(PP512[i,]$bb, (code[PP512[i, ]$bb + 1])/PP512[i, ]$Count, 
		PP512[i,]$Blocks/PP512[i,]$Count, PP512[i,]$ST/PP512[i,]$Count))
}


for (i in 1:nrow(TR512))
{
	EFF512tr<-rbind(EFF512tr, c(TR512[i,]$bb, (code[TR512[i, ]$bb + 1])/TR512[i, ]$Count, 
		TR512[i,]$Blocks/TR512[i,]$Count, TR512[i,]$ST/TR512[i,]$Count))
}



for (i in 1:nrow(PP1D512))
{
	EFF5121d<-rbind(EFF5121d, c(PP1D512[i,]$bb, (code[PP1D512[i, ]$bb + 1])/PP1D512[i, ]$Count, 
		PP1D512[i,]$Blocks/PP1D512[i,]$Count, PP1D512[i,]$ST/PP1D512[i,]$Count))
}


names(EFF512pp)<-ColnamesTR
names(EFF512tr)<-ColnamesTR
names(EFF5121d)<-ColnamesTR
