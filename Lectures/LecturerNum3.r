iris <- read.csv("Exercises/Ex3/iris_dataset.txt", sep = "\t")

ir <- iris
levelOfIrSpe <- unique(ir$species, incomparables = FALSE,)
subset(ir , ir$seplen >5 & ir$petwid < 2 & ir$species == levelOfIrSpe[3])


ir[order(ir$seplen, decreasing = T, na.last = T),][1:10,]
ir[order(ir$seplen, decreasing = F),][1:10,]

FunctionName <- function(x) {
  return(x<-x/2)
}
sapply(ir$sepwid,FunctionName())
FunctionName(ir$sepwid)



MyMean <- function(v) {
  if (class(v) == class(numeric))
  {
    sumArgs <- sum(v)
    nArgs <- length(v)
    return (sumArgs / nArgs)
  } else {
    print("the vector isnt numeric")
  }
}
class(ir$seplen) == class(numeric())
MyMean(ir$seplen)
mean(ir$seplen)



b= T
if( b== T){
  print("b is T")
}else{ 
  print(" b isnt t")
}



MyMean <- function(v) {
  if (class(v) != "numeric" & class(v) != "integer")
  {
  print("its not a numeric or an integer you stuped ass")
  } 
  else if (sum(is.na(v) >=1)) {
     v <- v[!is.na(v)]
  }if {

  }
  else 
  {
  sumArgs <- sum(v)
  nArgs <- length(v)
  return (sumArgs / nArgs)
  }
}
MyMean (as.numeric(c(1:12)))
vector123 <- (c(1:12 , NA , 30:33))
MyMean(vector123)
sum(is.na(vector123))
sapply(vector123,na.rm)









GreatFun <- function(SadVector, FunVector , MakeHappy ) {
  SadVector <- SadVector[!is.na(SadVector)] 
  FunVector <- FunVector[!is.na(FunVector)] 
  if (MakeHappy == T){
    print("make happy is T")
    return (SadVector * FunVector)
  }
  else{
    print("make happy is F")
    return(SadVector / FunVector)
  }
}
a <- T
b <- c(1:4)
c <- c(5:8)
GreatFun(c,b,a)


GreatFun(c(1:4,NA), 5:8 ,F)
GreatFun(c(1:4,NA), c(1:4,NA) ,T)




for (myvar in c("one" ,"two" , "three")){
  print(myvar)  
}
for (col in names(ir)[1:4]){
  nm <- mean(ir[,col])
  print(paste("the col is:", col,"and the mean is:" ,nm))  
}

ir$species <- factor(ir$species)
for (spec in levels(ir$species)){
  irl <- ir[ir$species == spec]
  mnsep <- mean(irl$species)
  print(paste ("mean is:", mnsep , "species name  " ,spec))
}



iris
1:10 * 5
for (identifier in collection) {
   selected
}






for (i in levels(ir$species)){
  ircopy <- subset(ir[ir$species == i,])
  print(i, apply(ircopy[,1:4],2,mean))
}


for (i in levels(ir$species)){
  ircopy <- subset(ir[ir$species == i,])
  print(paste("the spec is :", i , "the name of the col is:" , names(apply(ircopy[1:4] , 2, mean)) , "the mean is:", apply(ircopy[1:4], 2, mean)))
}
names(apply(ircopy[1:4], 2, mean))

for (i in levels(ir$species)){
  print(i)}





ll = list(var1num )



table(ir$species,)
