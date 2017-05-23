#correlation matrix
xcor <- data.frame(cor(x[,sapply(x, is.numeric)]))
