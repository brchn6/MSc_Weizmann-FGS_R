# Tutorial 3
# November 8th 2021

#### Tips

rm(list = ls()) # remove all the global environment.
# useful when you want to work in a clean environment
# can be put at the top of a script. 
# When you run it, it automatically starts in a clean environment
# ls() lists all the objects in the R environment and list creates 
# a character vector 


# What is the default option in your environment? 
options('stringsAsFactors')


#### Review 
#objects of different classes will be coerced into the wrong type according to 
#the hierarchy: character - integer/numeric - logical 

x = c("hello",2,TRUE)
class(x)

y = c(c(T,F,F,T), "hello")
y = c(c(T,F,F,T))
class(y)

z = c(1:5, c("a","d","g"))
class(z)

w = c(c(T,F,F,T), 12:46)
class(w)

#useful examples of coercion
mean(c(T,T,F,F,T,F,T,T))#will give the mean number of TRUE objects


#### Subsetting dataframes
# airquality is a built in dataset in R which has daily measurements for air quality
# in NY from May to September 1973. we will use this dataset for the 3rd assignment 
?airquality
dim(airquality)
head(airquality)
summary(airquality)

airquality[airquality$Ozone>100 & !is.na(airquality$Ozone) ,c("Day"), drop =F]  #TRUE AND NA values
airquality[airquality$Ozone>100 & !is.na(airquality$Ozone),]
airquality[complete.cases(airquality),]
length(is.na(airquality$Ozone))- sum(is.na(airquality$Ozone))


airquality[1,]# 1 row remains a df
airquality[,c("Ozone")]# turned into a vector when just one column
airquality[,c("Ozone"), drop=F] # keeps as a df

#subset function:
subset(airquality, Temp > 80, select = c(Ozone, Temp)) 		# logical rows and selected columns
subset(airquality, Day == 1, select = -Temp)  					# logical rows and removed column
	

# Order()
#Gives the indexes of objects in the vector in order from smallest to largest
x = c(2,3,5,7,1)
?order(x)
x[order(x)]


x = factor(c("D","B","C","E","D"))
x[order(x)]

#order a df
View(airquality)
head(airquality[])
head(airquality[order(airquality$Day),])
head(airquality[order(airquality$Solar.R,airquality$Month,airquality$Temp,na.last = T,decreasing = F),])


#### Conditional statements 

a = 5
b=1
if (a>10){
  print("a is really big")
} else {
  b<-1
  b <- a*b
  print(b) 
}
b
#nothing happened because the logical statement was FALSE so the code didnt run

if (a>10){
  print("a is really big")
} else {
  print("a is really small")
}



if (a>10){
  n = a
  print(paste0("n = ",n))
} else {
  n = a*10
  print(paste0("a is too small, so n=",n))
}


y = "Saturday"

if (y == "Saturday"){
  print("it's the weekend")
} else if (y == "Friday") {
  print("it's the weekend")
} else {
  print("it's not the weekend")
}

if (y == "Saturday" | y == "Friday"){
  print("it's the weekend!")
} else {
  print("it's not the weekend")
}
y %in% c("Saturday","Friday")
!y %in% c("Saturday","Friday")
#### For Loops

#control flow commands are the commands that 
#enable a program to branch between alternatives and 
#"make decisions"

#You can see these control flow commands by ?Control 
?Control

for(i in 1:5) print(1:i)
for(i in 1:5) (x<- i*2)
x
for(i in 1:5) {
  print(1:i^3)
}

m=20

for (k in 1:m){
  print(k)
}

for (k in 1:m){
  if (k>(0.5*m)){
    print(k)
  }
}


#rnorm creates random values in a normal distribution

for(n in c(2,5,10,20,50)) {
  x = rnorm(n)
  print(paste0(n, ": ", sum(x^2)))
}

#class exercise 

#A for loop just runs code iteratively but doesn't store values 
#in a variable we have to execute that explicitly. 
#But to store a value in an object, 
#first we need to create an empty object with the NULL object.

for (i in 1:130) {
  if (i >100) {
    print(c(i,i*2))
  } else { print(c(i,i * 3))}
}







#another example

vec = c(1,20,30,4,0,50,45,3,2,3,4,5,68,56,10,12)

count = 0
for (x in vec){
  if (x >= mean(vec)*0.5){
    count = count+1
  }
}
print(count)


#### functions

seven = function(){
  return(7)
}


seven()
x = seven()


f_to_c = function(degrees){
  return((degrees-32)*5/9)
}

#can combine functions
f_to_c(seven())

#class exercise 




