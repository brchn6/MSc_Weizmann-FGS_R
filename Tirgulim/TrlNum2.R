library(ggplot2)
library(dplyr)
library(tidyverse)

df <- read.csv('data/intro_tutorial_dataset.csv') # nolint
df <- subset(df , select = c(Title,Boxoffice,Director,Series.or.Movie ,Hidden.Gem.Score,IMDb.Score,Rotten.Tomatoes.Score,Release.Date,Netflix.Release.Date,IMDb.Votes,Director))
df$Boxoffice <- gsub('[$]','', (df$Boxoffice))
df$Boxoffice <- gsub(',','', (df$Boxoffice))
df$Boxoffice <- as.numeric(as.integer(df$Boxoffice))
df <- df[complete.cases(df),]
df <- df[1:3]

x <- aggregate(df$Boxoffice, by = list(df$Director), FUN = sum)
names(x) <- c("Director", "TotalBoxOffice")
View(head(x))

y <- aggregate(df$Boxoffice, by = list(df$Director), FUN = mean)
names(y) <- c("Director", "TotalBoxOffice")
View(head(y))

y<-aggregate(df$Boxoffice, list(df$Director), FUN="ave") 
names(y)[1] <- "Director"
names(y)[2] <- "Boxoffice"
View(head(y))

max_value <- max(df$Boxoffice, na.rm = TRUE,)
avg_value <- mean(df$Boxoffice, na.rm = F)

View(head(df))
View(head(max_boxoffice))
View(head(avg_boxoffice))
head(df)
            
dim(df)
sum(is.na(df$Boxoffice))

# Calculate the maximum box office per director
max_boxoffice <- aggregate(Boxoffice ~ Director, data = df, max)

# Calculate the average box office per director
avg_boxoffice <- aggregate(Boxoffice ~ Director, data = df, mean)

library(ggplot2)

# Assuming your data frame df has the columns Director, MaxBoxOffice, AvgBoxOffice, SumBoxOffice, Genre

# Create the plot
plot <- ggplot(df, aes(x = max_boxoffice, y = avg_boxoffice, )) +
  geom_point(alpha = 0.7) + # Set transparency to see overlapping points
  scale_size(range = c(2, 12)) + # Adjust the size range for sum of box office
  theme_minimal() + # Minimal theme
  theme(legend.position = "right") + # Position the legend on the right
  labs(title = "Director's Box Office Earnings Comparison",
       x = "Maximum Box Office Earnings",
       y = "Average Box Office Earnings",
       size = "Total Box Office Earnings",
       color = "Common Genre") +
  geom_text(aes(label = Director), check_overlap = TRUE, vjust = 1.5, hjust = 1.5) # Add director names

# Print the plot
print(plot)






View((a))
x <-
ggplot(a, aes(x=Group.1, y=x)) + 
    geom_point()

names(data)

# Libraries
library(ggplot2)
library(dplyr)

data <- df
# Most basic bubble plot
ggplot(data, aes(x=Group.1, y=x, size = pop)) +
    geom_point(alpha=0.7)

max(a[x])

names(data)
# install.packages("tidyverse")
# install.packages("dplyr")
# install.packages("reshape")
library(dplyr)
library(tidyverse)
library(reshape)
data <- data %>% group_by(Director) %>% summarise(max_area= max(Boxoffice), min_area=min(Boxoffice))
data <- data[1:90,]
data
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
