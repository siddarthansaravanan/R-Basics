FR<-as.data.frame(warpbreaks)
FR$wool<-gsub("A","Sample",FR$wool)

FR$wool[FR$wool=="B"]<-"xyz"

require(stringr)
x$abc<-str_replace_all(x$abc, "xyz", "")

