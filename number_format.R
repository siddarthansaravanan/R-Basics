library('scales')
x$price<-dollar_format()(x$price)

x$Discount<-paste(round(100*x$Discount, 2), "%", sep="")
