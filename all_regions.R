regions = c("East", "East Midlands", "London", "North East", "North West", "Scotland", "South East", "South West", "Wales", "West Midlands", "Yorkshire and The Humber")

for (i in c(1:length(regions))) {
	print(regions[i])
	print("2016 Leave/Remain")
	test<-mean(reallybigmrp[which(reallybigmrp$party == 1 & reallybigmrp$region_name== regions[i]),]$Leave.in.2016..Hanretty.)
	test2<-mean(reallybigmrp[which(reallybigmrp$party == 1 & reallybigmrp$region_name== regions[i]),]$Remain.in.2016..Hanretty.)
	print(test)
	print(test2)
	print("Today Leave/Remain")
	test3<-mean(reallybigmrp[which(reallybigmrp$party == 1 & reallybigmrp$region_name== regions[i]),]$Leave.w.o.NV.and.DK)
	test4<-mean(reallybigmrp[which(reallybigmrp$party == 1 & reallybigmrp$region_name== regions[i]),]$Remain.w.o.NV.and.DK)
	print(test3)
	print(test4)
}
