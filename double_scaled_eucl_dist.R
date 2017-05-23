  #double scaled euclidean distance between two columns
y[i,j]<-sqrt((((x[j,"col1"]-x[i,"col1"])^2)/(col1max-col1min)^2)+
               (((x[j,"col2"]-x[i,"col2"])^2)/(col2max-col2min)^2))/sqrt(len)
