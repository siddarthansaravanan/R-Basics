#read a csv file
FR  <- read.csv("",header = TRUE, sep = ",", quote = "\"", dec = "." ,
                fill=TRUE, comment.char="", as.is=TRUE)
#read table
FR  <- read.table("",header = FALSE, sep = ",", quote = "\"", dec = "." ,
                  fill=TRUE, comment.char="", as.is=TRUE)
require(XLConnect)
wb1 = loadWorkbook("x.xlsx")
df1 = readWorksheet(wb1, sheet = "Sheet1", header = TRUE)

library("readxl")
KW <- read_excel("x.xls")

library(data.table)
fread(x,"")
x <- fread("x.csv", na.strings = c("NA","NULL","#N/A"))
#write csv
write.csv(FR,"", row.names = FALSE)
fwrite(x,"")
#write image to pdf
pdf("myPlot.pdf")
library(xlsx)
write.xlsx(x, "x.xlsx")
