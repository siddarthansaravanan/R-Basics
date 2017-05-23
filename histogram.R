vrm(list = ls())

install.packages("reshape")

library(reshape)
colors = c("red", "yellow", "green", "violet", "orange","blue", "pink", "cyan") 
hist(duration,right=FALSE,col=colors,main="Old Faithful Eruptions",   xlab="Duration minutes")
