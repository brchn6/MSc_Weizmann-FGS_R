V1
all_cities <- c(V1, V2)
barplot(all_cities,col= "#ca3f3f" , main = "Heat")
all_cities
# Setting margins to ensure there's enough space for all bars
par(mar=c(9,4, 4, 4) + 0.1)
barplot(c(V1,V2),col= "#ca3f3f" , main = "Heat",space=.5, las =2)

# Plotting the barplot
barplot(all_cities, col= "#ca3f3f", main = "Heat", cex.names=0.8)
?las()
dev.off()

names(celsius) = cities
merge(celsiusDF ,fahrenheitDF , by.x=0 ,by.y =res)
merge
celsiusDF
fahrenheitDF
summary(celsiusDF)
summary(fahrenheit)
names(celsius) = cities
celsius
scatter.smooth(celsiusDF ~ fahrenheitDF, )
celsiusDF <- as.factor(celsius)
fahrenheitDF <- as.factor(fahrenheit)
celsius
fahrenheit
par(mfrow=c(2,1))
barplot(celsius)
barplot(fahrenheit)
barplot(celsius,col= "#ca3f3f" , main = "Heat",space=0, las =2)
barplot(fahrenheit,col= "#ca3f3f" , main = "Heat",space=0, las =2)
names(celsius)= cities
celsius
as.factor(fahrenheit)
summary(as.factor(fahrenheit))
as.factor(celsius)
summary(as.factor(celsius))
names(which(celsius != round((fahrenheit - 32) * 5/9, digits = 1)))
fahrenheit - 32
(fahrenheit - 32) * 5/9
celsius

