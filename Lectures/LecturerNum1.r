3+5
4*8
2*4
x = 13
x


y <- c(2,4,5,6,90)
y
z <- rep(2,400)
z
?rep
y1 <- 1:40
y1


b= c(T,F,F,T,F)
b


n = c(1,2,3,4,5,6,7,89,0,8,6,5,4,3,6)
n
length(n)
n[3]
length(n[-5])
n
n[1] <- 6
n[1]

x <- log(1:10)
n
sd(n)
var(n)
n
?var
mean(n, na.rm=FALSE)
boxplot(n)
plot(n)
barplot(n)
p <- barplot(n)
p
n <- rnorm(100)
hist(n ,breaks=100 ,xlab= 'nwta')
pie(x=n)
n <- rnorm(10,1 ,1)
n<- abs(n)
n
pie(n)
n


ls()
nms
nms[1][1]
nms=c("miriam","schragi","chaim","jochanan","ephraim","avraham","yemima")
nms
names(n)=nms
n <- 1:7
barplot(nms)
n
barplot(n ,main = paste("To","err","is human.dddd","To R is","divine!",sep="_"))


f=as.factor(c("stupid","stupid","smart","stupid","imbecile","smart","smart","imbecile"))
f
levels(f)
summary(f)
summary(n)
summary(b)
b=c(TRUE,FALSE,TRUE,FALSE,TRUE,TRUE)
b
