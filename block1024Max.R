nameTemplate<-"BM"
bb<-c(0, 1, 2, 3, 4, 5, 7, 6)
blockSize<-c(16, 24, 32, 48, 56, 64)
for (type in c("PP1024", "PP1D1024", "TR1024"))
{
	for (i in bb) {
		procData<-paste0(type, "_", i, "$Count")
		coreData<-eval(parse(text=procData))
		r<-length(coreData)
		for (j in blockSize) {
			l <- r/j
			nameString<-paste0(nameTemplate, "_", type, "_", 
				i, "_",j)
			eval(parse(text=paste0(nameString, "<-NULL")))
			for (k in 1:l) {
				lower<- 1 + ((k - 1) * j)
				upper<-lower + (j - 1)
				maxString<-paste0(nameString,
					"<-c(", nameString, ", max(",
					"coreData", "[", lower, ":", upper,
					"]))")
				eval(parse(text=maxString))
			}
		}
	}
}

