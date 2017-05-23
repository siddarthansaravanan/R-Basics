temp = list.files("c:/",pattern="*.csv")
myfiles = lapply(temp, read.delim)
