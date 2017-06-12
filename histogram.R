rm(list = ls())
library(reshape)
colors = c("red", "yellow", "green", "violet", "orange","blue", "pink", "cyan") 
hist(1:10,right=FALSE,col=colors,main="Old Faithful Eruptions",   xlab="Duration minutes")
