#clean up the work space
rm(list = ls())
#set working directory
setwd("")
#top rows
x <-head(FR)
#takes and displays (total observation - n) rows
head(InsectSprays, n = -52)
#last few rows
x <-tail(FR)
#concatenate function
paste(toMatch <-c("sku_id","site_unique_id","omsid"),collapse = "|")
#to dataframe
x<-data.frame(FR[,1:2])
#CreateNewColumn
x$C<-NA
#OverallFequencyCount
xy<-as.data.frame(table(x$breaks))
#Changingcolumnheader
names(xy)[1] <- "keyword"
#run time of the code
system.time()
#summation excluding NA's in the data
FR$New <- sum(as.numeric(FR$XYZ),na.rm = T)
#to upper
FR$Y<-toupper(FR$X)
#to lower
FR$Y<-tolower(FR$X)
#create a dataframe
x<-NA
y<-NA
z<-NA
xyz<-data.frame(x,y,z)
#multiplication
FR$xy<-as.numeric(FR$y)*as.numeric(FR$x)
#division
FR$xy<-as.numeric(FR$y)/as.numeric(FR$x)
#check for NA
is.na(x)
#Factors represent a very efficient way to store character values, because each unique character 
#value is stored only once, and the data itself is stored as a vector of integers
as.factor(x)
#rounding off a number
x$abc <-round(x$abc,2)
#set row names
rownames(x) <- x[,1]
#max of a column
mx<-max(x$abc)
#min of a column
mn<-min(x$abc)
#length of a numeric column
ln<-length(which(!is.na(x$abc)))
#matrix creation
x <- matrix(NA, ncol =5, nrow =5)
#rep a value
x$a <- rep("abc",nrow(x))
#dimension of dataframe
dim(InsectSprays)
#levels of data
levels(InsectSprays$spray)
#stats
mean.ozone = mean(ozone, na.rm = T)
var.ozone = var(ozone, na.rm = T)
sd.ozone = sd(ozone, na.rm = T)
#structure of an object
str(iris)
#unique of column
unique(x$a)
#number of characters
nchar(KW$abc)
#trim characters
trim(x$abc)

