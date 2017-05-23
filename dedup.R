#remove duplicates based on a column
xy<-x[!duplicated(x[,c('abc')]), ]
