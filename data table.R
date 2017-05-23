#sample code to work with data.table
library(data.table)
dt <- data.table(mtcars)
class(dt)
dt[,mpg]

dt[,mean(mpg)]
dt[,mean(mpg),by=am]
dt[,mean(mpg),by=.(am,cyl)]
dt[,.(avg=mean(mpg)),by=.(am,cyl)]
dt[mpg > 20,.(avg=mean(mpg)),by=.(am,cyl)]
dt[, .N]
dt[, .N, by=cyl]
dt[wt > 1.5, .(count=.N), by=am] 
dt[order(-mpg)][1:5]
dt[order(-mpg,wt)]
  