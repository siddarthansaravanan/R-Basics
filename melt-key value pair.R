library(reshape2)
y<-setNames(melt(x), c('rows', 'vars', 'values'))
y<-melt(x, id="Freq", measure="Var1")

melt(KW[,.(ProdId,pctl95,pctl100)], id.vars=c("Id"), variable.name="var1", value.name = "vol2")

require(data.table)

DT1 <- data.table(x=rep(letters[1:2], c(10, 10)), 
                  y=1L, key="x")
DT2 <- data.table(x=rep("a", 4), key="x")

dim(DT1[DT2, allow.cartesian=TRUE])
#allow.cartesian repeats the data n times
x<-merge(DT1,DT2,allow.cartesian=TRUE)
