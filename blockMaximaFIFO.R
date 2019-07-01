nameTemplate<-"BlockMaxima"
bb<-c(0, 2, 4, 3, 5, 7)
blockSize<-c(16, 24, 32, 48, 56, 64, 96, 128)

for (i in bb) {
	procData<-paste0("X_", i, "<-read.csv(\"/home/adrian/results/flash/512-fifo-pp-f.txt_", i,
		".txt\")")
	eval(parse(text=procData))
	eval(parse(text=paste0("coreData<-X_", i,
		"$Count")))
	r<-length(coreData)
	for (j in blockSize) {
		l <- r/j
		nameString<-paste0(nameTemplate, "_", i, "_", j)
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

