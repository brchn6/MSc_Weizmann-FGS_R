################################################################################
#     Principles and practice of large scale data analysis using R - 2022      #
#------------------------------------------------------------------------------#
# EXERCISE 2    26st December 2023                                             #
# Deadline: 2th January 2024 - 11:59 pm                                  
                                                    
################################################################################

### NOTES ######################################################################

# Write your code instead of the lines "YOUR_CODE" 

# PLEASE DO NOT REMOVE THE COMMENTED LINES WITH INSTRUCTIONS

# Output plots are not required to have the same appearance as the examples

### TASKS ######################################################################

# 1. Iris dataset

# 1.0. Read in the file "iris_dataset.txt" using read.table() in a variable `iris`
# It is the same file as used in the lectures. You can either download it from the google drive
# or the moodle (section 'DATASETS')
df <- read.csv("Exercises/Ex3/iris_dataset.txt", sep = "\t")

# 1.1.  Print a summary of the iris dataset
summary(df)

# 1.2   Print the class of each column in the iris data frame

#Option1:
str(df)

#Option2:
for (i in 1:ncol(df)) {
   print(class(df[[i]]))
}

# 1.3.  Create a vector "petal_length" that contains the values
#       of the column Petal.Length of iris
petal_length <- df[,"petlen"]

# 1.3.  Print how many elements in the column petal_length are: 
# - bigger or equal to 6
print(sum(petal_length>=6))

# - between 2 and 5 (not including 2 and 5)
print(sum(petal_length>2 & petal_length<5))

# - under 2 or above 5 (not including 2 and 5)
print(sum(petal_length<2 & petal_length>5))

# - bigger than the median of the column 
print(sum(petal_length>median(petal_length)))

#simple visualization
#hist(petal_length, abline(v=median(petal_length)))


# 1.5. Create a vector `petal_length.m` that contains the elements of 
#      petal_length that are greater or equal to the mean of petal_length
petal_length.m <- which(petal_length>mean(petal_length))

# 1.6. Plot histogram of petal_length.m with 20 breaks.(use the function hist())
hist(petal_length.m ,  breaks=20)

# 2. Selecting a subset of a dataframe

# 2.1. convert the column "species" from characters to factors
df$species <- factor(df$species)

# 2.2. Create a subset dataframe `iris.large` containing only the rows with seplen greater than 5.5
#option1:
iris.large <- df[df$seplen >5.5,]

# 2.3. Using "==", create a vector 'sumspecies' containing the number of element for each iris 
# species (column 'species') in the subset dataframe 'iris.large'
# Hint: you can combine with sum()
#option1:
sumspecies <- c()
levelsNmaes <- levels(iris.large$species)
for (i in 1:length(levelsNmaes)) {
   # sumspecies <- append(sumspecies,c(as.character(i),nrow(iris.large[iris.large$species == i,])))
   sumspecies[i] <- sum(iris.large$species == levelsNmaes[i])
   }

#option2:
sumspecies <- c()
for (i in levels(iris.large$species)){
   sumspecies <- append(sumspecies,sum(iris.large$species == i))
}


# Name the elements of the vector 'sumspecies' according to the corresponding species
names(sumspecies) <- levelsNmaes

# 2.5. Plot a barplot of the values of `sumspecies`. Use the argument `names.arg`
#	   to input the species names as labels for the bars.
barplot(sumspecies)

         #option2:
         sumspecies <- table(iris.large$species)
         # simple visualization
         barplot(sumspecies)



#option3:
table(iris.large$species)
#option2:

unique(iris.large$species)
levels(iris.large$species)


sumspecies
