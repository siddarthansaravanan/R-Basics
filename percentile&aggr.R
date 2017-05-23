xy <- x[, .(pctl90 = sum(Col1[Col1<=wtd.quantile(x=Col1,probs=c(0.9))]),
            pctl95 = sum(Col1[Col1<=wtd.quantile(x=Col1,probs=c(0.95))]),
            pctl100 = sum(Col1[Col1<=wtd.quantile(x=Col1,probs=c(1))]),
            customers = .N), by = list(Id)]
