df <- read.csv('data/intro_tutorial_dataset.csv') # nolint
df <- subset(df , select = c(Title,Boxoffice,Series.or.Movie ,Hidden.Gem.Score,IMDb.Score,Rotten.Tomatoes.Score,Release.Date,Netflix.Release.Date,IMDb.Votes,Director))
df$Boxoffice <- gsub('[$]','', (df$Boxoffice))
df$Boxoffice <- gsub(',','', (df$Boxoffice))
df$Boxoffice <- as.numeric(as.integer(df$Boxoffice))
df <- df[complete.cases(df),]
View(head(df))
dim(df)
sum(is.na(df$Boxoffice))
a<-aggregate(df$Boxoffice, list(df$Director), FUN="sum") 
View((a))
scatter.smooth(a)
text()






let <- letters
let
num <- 1:26 
num
names(num) <- let
num
num[2]


student.data = list(Names = c("bob" , "bar" , "miri"))
student.data[[1]][1]

list.exapmle= strsplit(x = "Hello,World", split = ",")
list.exapmle
length(list.exapmle)
(list.exapmle)
paste("a","b")
paste(list.exapmle)
rm(list = ls())



binary.num= 1001
binary.num.split= strsplit(as.character(binary.num), split = "")
binary.num.split
