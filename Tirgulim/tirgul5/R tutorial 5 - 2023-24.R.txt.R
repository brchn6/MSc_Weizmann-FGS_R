# Load data
data("iris")
# Basic plotting
boxplot(Sepal.Length~Species,iris,col = c(1:3))
hist(iris$Sepal.Width,col = "red")
plot(iris$Sepal.Length,iris$Sepal.Width, col = iris$Species)

iris
###
############ ggplot ############
# ggplot is a one stop shop that uses tables to plot graphs of different formats, and to combine between them
# working with ggplot is extremely simple. 
# We will start by plotting a dot plot. 
# Calling ggplot() initiates the the function. Always start with it.  
library(ggplot2, help, pos = 2, lib.loc = NULL)
ggplot()+
  # Calling geom_point() tells ggplot we want our graph to be in the shape of a dot plot. 
  # there are many type of geom_(s), each generates a different type of graph: histogram, box plot, lines...
  # data = iris, tells the geom_ to use iris as the source of the data. 
  # mapping = aes(x = Sepal.Length, y = Sepal.Width), tells ggplot which columns to use for the plotting
  # aes() may looks confusing, in general, aes() is used whenever you want to use the data from table to set xy coordinates/change color/shape based on a factor in the data 
  # that's it
  geom_point(data = iris, mapping = aes(x = Sepal.Length, y = Sepal.Width))
## Adding colors based on groups ##
ggplot()+ geom_point(data = iris,mapping = aes(x = Sepal.Length, y = Sepal.Width, col = Species))
A <- ggplot()+ geom_histogram(data =iris , mapping = aes(x = Sepal.Length))
B <- ggplot()+ geom_bar(data =iris , mapping = aes(x = Sepal.Length))
install.packages("gridExtra")
library("gridExtra")
install.packages("cowplot")
library("cowplot")
plot_grid(A, B, labels=c("A", "B"), ncol = 1, nrow = 2)

## Changing shapes based on groups ##
A <- ggplot()+
  # aes() may looks confusing, but think in general, aes() is used whenever you want to use the data the table to plot/color/shape 
  geom_point(data = iris,
             mapping = aes(x = Sepal.Length, y = Sepal.Width, shape = Species, col = Species)
             ,size = 2)

## Adding colors not based on groups ##
ggplot()+
  # aes() may looks confusing, but in general, aes() is used whenever you want to use the data in the table to define xy coordinates/color based on a variable/change shape based on a variable 
  geom_point(data = iris,
             mapping = aes(x = Sepal.Length, y = Sepal.Width),
             col = "red")
## Adding another layer ##
ggplot()+
  geom_point(data = iris,
             mapping = aes(x = Sepal.Length, y = Sepal.Width))+
  geom_text(data = iris,
            mapping = aes(x = Sepal.Length, y = Sepal.Width,label = Species))

ggplot()+
  geom_point(data = iris,
             mapping = aes(x = Sepal.Length, y = Sepal.Width))+
  # label plot labels instead of dots or bars. 
  # nudge_x/nudge_y shifts the position of the label in the x or y direction
  geom_text(data = iris,
            mapping = aes(x = Sepal.Length, y = Sepal.Width,label = Species),
            size = 2, 
            nudge_y = 0.1)

ggplot()+
  geom_point(data = iris,
             mapping = aes(x = Sepal.Length, y = Sepal.Width))+
  geom_text(data = iris,
            mapping = aes(x = Sepal.Length, y = Sepal.Width*1.01, label = Species),
            size = 2)

# After lunching ggplot by ggplot(), each layer is almost an independent unit. Each layer can accept different data.
# In the absence of data, or missing values in the aes() the layer looks up to the ggplot() function. 
# ggplot() can serve as a source of "default" data. 
# But be carful, if you define parameters inside ggplot() they can affect all the layers downstream
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width,label = Species))+
  geom_point()+
  geom_text(size = 2, 
            nudge_y = 0.1)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width,label = Species))+
  geom_point(col = "red")+
  geom_text(size = 2, 
            nudge_y = 0.1)

# We can split the data into subgroups and display each group in a different subpanel
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))+
  geom_point(shape = 21)+
  geom_smooth(method = "lm")+
  # facet_wrap() breaks the data into one dimensional sub-panels
  # facet_grid(x~y),breaks the data into two dimensions sub-panels
  facet_wrap(~Species)+
  # theme_bw/theme_classic change the appearance of the graph
  theme_dark()+
  #theme() controls the look of the plot, size and shape of the axis for example
  theme(aspect.ratio = 1,
        panel.grid = element_blank(),
        axis.text = element_text(face = "bold",size = 10))

# Another exapmle 
ggplot()+
  geom_histogram(data = iris,
                 mapping = aes(x = Sepal.Length ),fill = "red", alpha = 0.5,col = "black")+
  geom_freqpoly(data = iris,
                mapping = aes(x = Sepal.Length ))+
  geom_histogram(data = iris,
                 mapping = aes(x = Sepal.Width ),fill = "blue", alpha = 0.5,col = "black")+
  geom_freqpoly(data = iris,
                mapping = aes(x = Sepal.Width ))+
  facet_wrap(~Species)+
  theme_bw()+
  theme(aspect.ratio = 1,
        panel.grid = element_blank(),
        axis.text = element_text(face = "bold",size = 10))+
  xlab("")

############ loops how to use them ############
avg = c()
for (i in 1:ncol(iris)) {
  print(paste("i has the value of",i))
  column.avg = mean(iris[,i])
  avg[i] = column.avg
  #avg = c(avg,column.avg), is another option
}

for (i in 1:ncol(iris)) {
  print(paste("i has the value of",i))
  print(class(iris[,i]))
}

for (i in 1:ncol(iris[,-5])) {
  print(paste("i has the value of ",i))
  print(paste("The avg of column" , names(iris)[i] , "was calculated"))
  avg[i] = column.avg
}

# loop within a loop

prod.values = c()

for (COLUMNS in 1:9) {
  print(paste("This is column", COLUMNS))
  for(ROWS in 1:9){
  print(paste("This is row", COLUMNS))
  }
}

for (COLUMNS in 1:9) {
  print(paste("This is column", COLUMNS))
  for(ROWS in 1:9){
    print(paste("This is row", COLUMNS))
    product = COLUMNS*ROWS
    prod.values = c(prod.values,product)
  }
}
matrix(data = prod.values,ncol = 9,nrow = 9)


# Finding the mean value of each parameter for each type of iris
for (iris.types in unique(iris$Species)){
  print(iris.types)
  for (iris.paprmeter in names(iris[,1:4])) {
    print(iris.paprmeter)
    mean.value = mean(iris[iris$Species==iris.types,iris.paprmeter])
    print(paste("The mean value of the", iris.paprmeter, "of", iris.types, "is", mean.value))
  }
}
###### apply #####

apply(iris[,-5], MARGIN = 2, FUN = mean)

##### lapply #####
# lapply() goes over the elements in list one by one, and preforms a function on those elements. Because lapply() works with
# lists, its output is also a list
# IMPORTANT!!!  a data frame is also a list, but in a nicer format. Each column is an element in the list 
lapply(iris[,-5], function(x){x/sd(x)})
scaled.data_list = lapply(iris[,-5], function(x){x/sd(x)})
scaled.data_table = as.data.frame(do.call(cbind, scaled.data_list))
scaled.data_table$Species = iris$Species


##### sapply #####
# Try to simplify the product of lapply
# IMPORTANT!!! the results of the simplification might be unpredictable. 
sapply(iris[,-5], function(x){x/sd(x)})


##### tapply #####

tapply(iris$Sepal.Length, iris$Species, mean)

for (iris.paprmeter in names(iris[,1:4])) {
  print(iris.paprmeter)
  print(tapply(iris[[iris.paprmeter]], iris$Species, mean))
}
