iris <- read.csv("Exercises/Ex3/iris_dataset.txt", sep = "\t")

ir <- iris
levelOfIrSpe <- unique(ir$species, incomparables = FALSE,)
subset(ir , ir$seplen >5 & ir$petwid < 2 & ir$species == levelOfIrSpe[3])
names(ir)

tapply(ir$seplen, ir$species, mean , simplify = TRUE)
tapply(ir$seplen, ir$species, median, simplify = TRUE)
barplot(tapply(ir$seplen, ir$species, median, simplify = TRUE))
boxplot(tapply(ir$seplen, ir$species, mean , simplify = TRUE))





install.packages(c("plyr"))
library(plyr)
plyr
?ddply(ir, "species")


ir
merge()

path <- file.path(getwd() , "/data/YeastAnnotation.txt")
a <- read.delim(path, header = TRUE, sep = "\t", dec = ".")
head(df)
dim(df)
library(ggplot2, help, pos = 2, lib.loc = NULL)
names(df)
str(df)
qplot(df$cdsStart)

library(cowplot)
install.packages("cowplot")

par(mfrow = c(1, 2), ) 
a1<- ggplot(data = ir , aes(x= seplen , y= petlen, col=species)) +geom_point()+ geom_boxplot() 
a2<- ggplot(data = ir , aes(x= seplen , y= petlen, col=species)) +geom_point()#+ geom_boxplot() 
ggplot(data = ir , aes(x= seplen , y= petlen, col=species)) +geom_jitter()#+ geom_boxplot() 
grid.arrange(a1,a2,ncol=2)
ggplot(data = df , aes(x= txLength , y= txStart),col=df$strand) +geom_point()


P<- ggplot(data = ir , aes(x= seplen , y= petlen, col=species)) +geom_jitter()+ facet_wrap(~species) 
P + theme_bw() 
P + theme_classic() 
P + theme_dark() 


haed(df)
a <- df
str(a)
head(a$KGcanonicalclusterID)
length(unique(a$KGcanonicalclusterID, incomparables = FALSE,))


vb<- grep ("meio", a ,value=TRUE )
dim(a)
head(vb)

tRNA <- grep ("RNA" , a$txcateg ,value=T)
str(a)

