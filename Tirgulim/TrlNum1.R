df <- read.csv('data/intro_tutorial_dataset.csv') # nolint
head(df, 1)
dim(df)
str(df)
class(df$Boxoffice)
hist(df$IMDb.Score)
table(df)
ls()
View(head(df))
names(df)
NumericCol <- df [c("IMDb.Votes","Title")]
head(NumericCol)


BO <- df$Boxoffice
sum(is.na(BO))

sum(is.na(BO))
head(BO)
count()
length(unique( BO ))
rdf <- subset(df , select = c(Title,Series.or.Movie ,Hidden.Gem.Score,IMDb.Score,Rotten.Tomatoes.Score,Boxoffice,Release.Date,Netflix.Release.Date,IMDb.Votes,Director))
names(df)
names(rdf)
View(head(rdf))
class(df$Title)
length(df$Title)
hist(rdf$IMDb.Score)
hist(rdf$Rotten.Tomatoes.Score)
plot(rdf$IMDb.Score~rdf$Rotten.Tomatoes.Score)
summary(rdf$IMDb.Score)
class(df$Boxoffice)
df$Boxoffice
library(tibble)
view(tibble(head(rdf)))

ListOfDirector <- unique(rdf$Director)
sum_by_Director <- aggregate(Boxoffice ~ Director , rdf , sum)
class(rdf$Director)
rdf$Director <- toString(rdf$Director)
rdf$Boxoffice <- as.numeric(rdf$Boxoffice)
class(rdf$Boxoffice)
rdf$Boxoffice
sapply(rdf ,class)
rdf$Boxoffice <- gsub("$","", as.numeric(rdf$Boxoffice))



gsub('$' , 'g' ,head(rdf$Boxoffice))
str_replace(head(rdf$Boxoffice), "$" , ".")
rdf$Boxoffice <- gsub('[$]','', rdf$Boxoffice)
a <- chartr("$" , " " , head(rdf$Boxoffice))
chartr(" " , "" , a)


x <- "a$'b$$$ c"
gsub('[$]','',  head(rdf$Boxoffice))
class(x)



aggregate(Boxoffice ~ Director , data= rdf,FUN = "sum" )

?aggregate()
