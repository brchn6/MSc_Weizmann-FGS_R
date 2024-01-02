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

iris
apply(iris[1:4], 2, mean)
someFun <- function(x) {
  paste("The of this col " "is : " x[])
}


lapply(iris[1:4],2 , FUN = function(x) {
  paste("The mean of this col is:" ,mean(x, na.rm=FALSE))
})
class(lapply(iris[1:4], mean))
class(sapply(iris[1:4], mean))
x <- iris[1:4]
names(x)

class(tapply(iris[1:4], mean))
tapply(iris[1:4], unlist(unique(iris[5])), mean)







str(mtcars)
barplot(apply(mtcars , 2 , FUN = function(x) {(min(x)/max(x))}))
exscludedCol <- c(mtcars$vs, mtcars$am)
barplot(apply(mtcars[-mtcars$vs,-mtcars$am] , 1 , min))
barplot(apply(mtcars[-exscludedCol] , 1 , min))
apply(mtcars[-exscludedCol] , 1 , min)
names(PlantGrowth)
tapply(PlantGrowth, vector(PlantGrowth$group) , FUN = mean)
barplot(tapply(PlantGrowth$weight ,PlantGrowth$group , FUN = mean))
barplot(apply(mtcars[-mtcars$vs,-mtcars$am] , 1 , min))
PlantGrowth$group
?tapply
