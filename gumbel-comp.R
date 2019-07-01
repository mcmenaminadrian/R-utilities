genpoints<-NULL
timespp512<-NULL
timespp512min<-NULL
timespp512max<-NULL
timespp256<-NULL
timespp256min<-NULL
timespp256max<-NULL
for (i in seq(2450000,2480000,100))
{
	genpoints<-c(genpoints, i)
	timespp512<-c(timespp512, dgumbel(i, 2441000, 30757))
	timespp512min<-c(timespp512min, dgumbel(i, 2437476, 28265))
	timespp512max<-c(timespp512max, dgumbel(i, 2444524, 33249))
	timespp256<-c(timespp256, dgumbel(i, 2450485, 1374))
	timespp256min<-c(timespp256min, dgumbel(i, 2450311, 1252))
	timespp256max<-c(timespp256max, dgumbel(i, 2450659, 1496))
}
probs_pp1_512<-data.frame(genpoints, timespp512)
probs_pp1_256<-data.frame(genpoints, timespp256)

probs_pp1_512max<-data.frame(genpoints, timespp512max)
probs_pp1_512min<-data.frame(genpoints, timespp512min)
probs_pp1_256max<-data.frame(genpoints, timespp256max)
probs_pp1_256min<-data.frame(genpoints, timespp256min)
