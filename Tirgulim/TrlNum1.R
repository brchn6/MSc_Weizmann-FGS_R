df <- read.csv('data/intro_tutorial_dataset.csv') # nolint
dim(df)
View(head(df))
names(df)

rdf <- subset(df , select = c(Title,Series.or.Movie ,Hidden.Gem.Score,IMDb.Score,Rotten.Tomatoes.Score,Boxoffice,Release.Date,Netflix.Release.Date,IMDb.Votes,Director))
dim(rdf)
names(rdf)
View(head(rdf))

aggregate(rdf$Boxoffice, list(rdf$Director), FUN=sum) 

rdf$Boxoffice <- gsub('[$]','', (rdf$Boxoffice))
ListOfDirector <- unique(rdf$Director)
sum_by_Director <- aggregate(Boxoffice ~ Director , rdf , sum)
dim(sum_by_Director)
class(rdf$Director)
rdf$Director <- toString(rdf$Director)
rdf$Boxoffice <- as.numeric(rdf$Boxoffice)
class(rdf$Boxoffice)
rdf$Boxoffice
sapply(rdf ,class)



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
