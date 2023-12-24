Factor5 =as.factor(c("stupid","stupid","smart","stupid","imbecile","smart","smart","imbecile"))
levels(Factor5) #possible values a variable in y can have
summary(Factor5
) #provides the number of time each factor occurs
# A boolean variable can be either TRUE or FALSE.
b=c(TRUE,FALSE,TRUE,FALSE,TRUE,TRUE)
sum(b) #number of "TRUE" elements
sum(a) #number of "TRUE" elements
b =F
a =T

a&b
a|b
!a
!a |b

a=c(TRUE,TRUE,FALSE,TRUE)
b=c(FALSE,TRUE,FALSE,FALSE)
a==b
a!=b
a>b
a<b


n=3
n>2
n>5
n<5
n<=3
n==3
n!=2
! n==5
n==5

n=c()
n=c(3,3,4,5)


fill <- n!=3 & n<5
n[fill] <-"BOOM"
n[c(2,4)]
n[c(T,T,T,T)]
fill <- "bomm"




n=c(1,3,12,9,10,12) #numeric vector
# extract all elements from vector n that are both greater than 5 and below 10
n[n>5 & n<10]
# extract all elements that are either below 5 or over 10
n[n>\5 | n<10]
# extract all elements that are below 12 and not equal to 3
n[n!=3 & n<12]


ind=c(T,T,F,F,F,T)
n[ind] #c(1,3), numeric vector
n>5 #F,F,T,T,T,T 
n[n>5]





library(datasets)
library(ggplot2)
# install.packages("ggplot2")
data(iris)
View(iris)
hist(iris$Sepal.Length)
qplot(iris$Species)
class(ir)
dim(ir)
ir[1,]
ir[,1]
ir[1,]
head(ir)
names(ir)
ir[ir$seplen >= 6,]
qplot(ir$sepwid)
head(ir[,c("seplen","sepwid")])
ir$seplen >6
ir[ir$seplen>6,c("seplen")]



ir <- iris
names(ir) <- c("seplen","sepwid","petlen","petwid","species")
hist(ir[ir$seplen >6 & ir$sepwid <2.6,c("petwid")])

mean3 <- mean(ir[ir$seplen >6 & ir$sepwid <2.6,c("petwid")])

hist(ir[ir$seplen >6 & ir$sepwid <2.6,c("petwid")], abline = mean3)

plot(ir$petlen,
ir$petwid,
abline(h=mean(ir$petwid),
main ="BarPlot",
xlab="hahah"
)) #plotting one set of numbers as a function of another

x<-ir$seplen
y<-ir$petlen
plot(x,y , abline(lm(x~ y), col ="red",lwd= 4), col =as.numeric(ir$species))
text(paste("Correlation:", round(cor(x, y), 2)), x = 6.5, y = 1.5)


plot(x,y , abline(lm(x~ y), col ="red",lwd= 4), col =as.numeric(ir$species))
text(paste("Correlation:", round(cor(x, y), 2)), x = 2.5, y = 0.5)


summary(as.numeric(ir$species))


pairs(ir[,1:4],  abline(lm(), col ="red",lwd= 4), col =as.numeric(ir$species))

x<-ir$sepwid
y<-ir$petwid

## put (absolute) correlations on the upper panels,
## with size proportional to the correlations.
panel.cor <- function(x, y, digits = 2, prefix = "", cex.cor, ...)
{
    par(usr = c(0, 1, 0, 1))
    r <- abs(cor(x, y))
    txt <- format(c(r, 0.123456789), digits = digits)[1]
    txt <- paste0(prefix, txt)
    if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
    text(0.5, 0.5, txt, cex = cex.cor * r)
}
pairs(ir, lower.panel = panel.smooth, upper.panel = panel.cor,
      gap=0, row1attop=FALSE)
