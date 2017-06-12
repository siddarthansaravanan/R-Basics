#aggregate function
dt<-data.frame(mtcars)
aggregate(dt$mpg,list(dt$cyl), mean)
