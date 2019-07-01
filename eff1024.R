code<-c(1262292, 376891, 378280, 658567, 8295863, 332299, 13437582, 736058)

EFF1024tr<-NULL
EFF1024pp<-NULL
EFF10241d<-NULL
EFF1024tr<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())
EFF1024pp<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())
EFF10241d<-data.frame(bb=integer(), efficiency=double(), blocks=double(), stfull=double())
ColnamesTR <- names(EFF1024pp)

for (i in 1:nrow(PP1024))
{
	EFF1024pp<-rbind(EFF1024pp, c(PP1024[i,]$bb, (code[PP1024[i, ]$bb + 1])/PP1024[i, ]$Count, 
		PP1024[i,]$Blocks/PP1024[i,]$Count, PP1024[i,]$ST/PP1024[i,]$Count))
}


for (i in 1:nrow(TR1024))
{
	EFF1024tr<-rbind(EFF1024tr, c(TR1024[i,]$bb, (code[TR1024[i, ]$bb + 1])/TR1024[i, ]$Count, 
		TR1024[i,]$Blocks/TR1024[i,]$Count, TR1024[i,]$ST/TR1024[i,]$Count))
}



for (i in 1:nrow(PP1D1024))
{
	EFF10241d<-rbind(EFF10241d, c(PP1D1024[i,]$bb, (code[PP1D1024[i, ]$bb + 1])/PP1D1024[i, ]$Count, 
		PP1D1024[i,]$Blocks/PP1D1024[i,]$Count, PP1D1024[i,]$ST/PP1D1024[i,]$Count))
}


names(EFF1024pp)<-ColnamesTR
names(EFF1024tr)<-ColnamesTR
names(EFF10241d)<-ColnamesTR
