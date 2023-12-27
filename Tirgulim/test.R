x = c(2,"hello", 2, T)
class(x)
x
y



x <- 1:5
y =c(T,T,F,F,T)
x[y]



rm(list= ls())
RNALetters <- c("C","G","A","U")
DNALetters <- c("G","C","T","A")
names(RNALetters) <- DNALetters

DNAstr <- unlist(strsplit("TACGCGAGATACACTGCCAAAAATCCGCGTGATTACGAGTCGTGGCAAATTTGGTCTGGCTGTGGTCTAGACATTCCAGGCGGTGCGTCTGCTCTCGGGT", ""))
RNAStr <- RNALetters[DNAstr]
paste(RNAStr ,collapse = "")




z <- c("low" ,"low" , "high" , "mid")
levels(z)
z <- as.factor(c("low" , "high" , "mid"))
levels(z)
z <- factor(c("low" , "high" , "mid"), levels=c("mid","high","low") )
levels(z)
