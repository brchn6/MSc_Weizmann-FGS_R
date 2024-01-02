df1 <- data.frame(
  A = c(1, 2),
  B = c(3, 4)
)

df2 <- data.frame(
  C = c(5, 6),
  D = c(7, 8)
)
cbind(df1, df2)




Mylist <- list(3,5,4:7,T,"hello")
length(Mylist)

class(Mylist[3])
class(Mylist[2])
class(Mylist[[2]])
class(Mylist[[3]])

names(Mylist) <- c("my","list" ,"items" ," are" ,"here")
Mylist$items
Mylist$my



names(Mylist) <- c("my", "list" , "items" , "are" , "here")
Mylist[[6]] <- 19
Mylist[[10]] <- "new shit"
as.data.frame(Mylist)


BarList <- list(MyName ="Bar" ,YearOfBirth =1995,DoiLikeGrapefruit= T)
print (class(BarList[[2]]))
BarList [[3]] <- F


SomeList <- list(1:3, 4:6, 7:9,10:12)
do.call(cbind, SomeList)
do.call(rbind, SomeList)

strIwant ="ColName"
numericCount= c(1:length(SomeList))
paste(strIwant ,numericCount)




