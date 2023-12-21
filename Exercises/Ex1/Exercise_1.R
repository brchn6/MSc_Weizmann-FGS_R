################################################################################
#     Principles and practice of large scale data analysis using R - 2023-2024      #
#------------------------------------------------------------------------------#
# EXERCISE 1    12th December 2023                                              #
# Deadline: 19th December 2023  - 11:59 pm                                  #

################################################################################

### NOTES ######################################################################

# Write your code instead of the 'YOUR_CODE'

# PLEASE DO NOT REMOVE THE COMMENTED LINES WITH INSTRUCTIONS

### TASKS ######################################################################

# 0.1.  Run the line below into the console to load the  vector called 'fahrenheit'
fahrenheit <-  c(35, 88, 42, 84, 81, 30, 21, 78, 55, 63)

# 0.2   Print to the console the length of the vector 'fahrenheit'
print(length(fahrenheit))

# 0.3   Store the length of the vector 'fahrenheit' in a variable called 'Fahrenheit_length'
Fahrenheit_length <-  length(fahrenheit)

#0.4 Check the class of the fahrenheit vector
class(fahrenheit)

# 1.1  Create a character vector 'cities' containing the following 10 values:
#      - Beijing, Lagos, Paris, Rio de Janeiro, San Diego, Toronto, Reykjavik, 
#        Tel Aviv, San Francisco, Madrid
cities <-  c('Beijing', 'Lagos', 'Paris', 'Rio de Janeiro', 'San Diego', 'Toronto', 'Reykjavik' , 'Tel Aviv', 'San Francisco', 'Madrid')

# 1.2  Print to the console the length of the vector 'cities'
print(length(cities))

# 1.3 Use the names() function to associate temperature data ('Fahrenheit') with 
#     its corresponding city ('cities'). (ordered as in the vectors)
names(fahrenheit) = cities

# 1.4 Draw a histogram of 'Fahrenheit'
hist(fahrenheit)

# 2.1. Extract the following values from the vector 'Fahrenheit' and save them as vectors:
#      - temperatures of the first three cities
#      - temperatures of the last three cities (you might need to use the length stored in variable 'n')
#    Hint: Use operators [ ] to subset the position on the vector 'fahrenheit' 

V1 <- fahrenheit[1:3]
V2 <- tail(fahrenheit, n=3)

# 2.1 use the max() function to find the city with the highest temperate 
V3 <- names(which.max(fahrenheit))

# 2.1 Make a barplot of the Fahrenheit temperatures with cities names below the bars.
#        use only the first three and last three cities. Add a main title 'Heat' and 
#        change the bar color to red.
#Hint: check the additonal arguments of the barplot() function
par(mar=c(7,4,2,5))
barplot(c(V1,V2),col= "#ca3f3f" , main = "Heat",space=0, las =2)
 
# 3.1  Run the following code to sore the Celsius vector (this the the Fahrenheit vector after conversion)
celsius = c(31.1, 1.7, 5.6, 28.9, 27.2, -1.1, -6.1, 25.6, 12.8, 17.2)

# 3.2   Plot the Celsius temperatures against the Fahrenheit temperatures in a scatterplot
plot(celsius~fahrenheit)
text(celsius~fahrenheit,  labels= cities , cor = 0.4)


# 3.3 Can you spot the outliers?
# We manually flipped the locations of two elements in the Celsius vector (we did not touch the Fahrenheit vector). 
# Which two cities were effected? store your answer as a character vector
outlier_cities <- names(which(celsius != round((fahrenheit - 32) * 5/9, digits = 1)))
