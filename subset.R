#Subset the data based on column values
FR1 <- with(FR,subset(FR,wool == "xyz" & tension =="L"),names(KW))

FR1 <- FR[grep(paste(toMatch <- c("",	""), collapse = "|"),
                       FR$breaks,ignore.case = TRUE),]
#subset based on column names
FR <- FR[,grep(paste(toMatch <-c("X","X.","result_type","Brand","page_num"),
                     collapse = "|"),names(FR),value = T,invert = T)]
#drop rows based on a value
FR <- FR[-grep("xyz",FR[,1]),]

#Use Grepl func. along with paste and the "or" logic represented by"|" to subset data based 
#on multiple keywords
x<- c("a", "b", "c")
Grep<-subset(FR, grepl(paste(x, collapse="|"), FR$breaks, ignore.case=TRUE))

#removes complete row from the dataframe whichever meets the function
Remove_Cases <- c("","")
Keep_Cases <- apply(FR,1,function(x) !any(x %in% Remove_Cases))
KWF <- FR[Keep_Cases,]

#subsets based on the number of characters
FR <- subset(FR,nchar(FR$X)<1,names(FR))


