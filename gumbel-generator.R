genpoints<-NULL
timespp1<-NULL
timespp11d<-NULL
for (i in seq(3800000,7800000,10000))
{
	genpoints<-c(genpoints, i)
	timespp1<-c(timespp1, dgumbel(i, 3834851, 84678))
	timespp11d<-c(timespp11d, dgumbel(i, 3863841, 110303))
}
probs_pp1_nodelay<-data.frame(genpoints, timespp1)
probs_pp1_1delay<-data.frame(genpoints, timespp11d)
