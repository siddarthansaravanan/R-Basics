FR1<-as.data.frame(warpbreaks)
FR2<-as.data.frame(warpbreaks)
#row bind
FR <- rbind(FR1,FR2)
#Column bind
x<-as.data.frame(cbind(FR[,1],FR[,3]))
#cbind with different column length
library("qpcR")
KW<-qpcR:::cbind.na(x,y)
