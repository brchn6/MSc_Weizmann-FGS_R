################################################################################
#     Principles and practice of large scale data analysis using R - 2024      #
#------------------------------------------------------------------------------#
# EXERCISE 4 - (2th January 2024)                                            #
# Deadline: 9th January 2024 - 11:59 pm                                 #
################################################################################

### NOTES ######################################################################

# Please note that some of the questions in this exercise more or less repeat the same concepts.
# This is because mastering the apply family is important and practice is needed. 

## REMEMBER
# Replace all instances of 'YOUR_CODE' with code that you write.
## In this exercise we will practice the following  functions:
# sapply()
# apply()
# list()
# lapply()
# do.call()



# 1. Practice fancy list subset ###############################################
# Create a list with 6 elements: 2 of class numeric, 2 of class character and 2 of class logical.
diverse_list  <- list(42 , 100:109 , "Banana", "Apple", Monkey = T , Babon = F)

# use lapply to subset the list into 3 different lists, each one with 2 elements of the same class. If you wish, you can use the functions is.numeric() is.character() and is.logical
numeric_list <- YOUR_CODE
charecter_list <- YOUR_CODE
logical_list <- YOUR_CODE

#use sapply (once once on each of the 3 lists above) to  check that your previous code worked (i.e. find the class of each element)
#for numeric
YOUR_CODE
#for character
YOUR_CODE
#for logical
YOUR_CODE



# 2. load DATA #######################################################################

# Download the file `worldRankings.Rdata` from the moodle 
# and load it using load(). 
load("worldRankings.Rdata")
# You should now be able to see a small part of the table using the code below
worldrankings[1:3, 1:5]

# 3. FOR loop ########################################
# - Initialize a list called 'numCols'. Make it as long as the number of columns
# in `worldrankings`, and make each element NA.
numCols <- YOUR_CODE
print(numCols)

# 3.1 Name the elements in the list by the column names of `worldrankings`
YOUR_CODE
print(numCols)

# 3.2 Use a "for loop" to store logical values in the 'numCols'list (replace the NAs).  if the adjacent column of `worldrankings`
# is numeric store TRUE and FALSE if it is not. 

for(YOUR_CODE){
  YOUR_CODE
}

print(numCols)



# 3.compare loop to lapply() ######################################

# Create an object similar to `numCols`, which indicates TRUE if each 
# column of `worldrankings` is numeric and FALSE if not, BUT this time
# do it using lapply(). 
# - Name this new object `numCols_2`.
# Note: A nice side effect of using lapply in this
# case is that the output will automatically be named using the column names of
# `worldrankings`; as opposed to using the 'for loop' which doesn't consider 
# this automatically.
numCols_2 <- YOUR_CODE
print(numCols_2)


# 4 unlist() ##########################################################
# - use unlist to covert the list `numCols` into a vector
# - compare the values of this vector with the values of numCols_2 to make sure 
# they are identical. The final output should be 'TRUE'.
# Hint: The function `all()` checks if all the elements in a logical vector are TRUE. 
YOUR_CODE



# 5 apply() #################################
# - Using the 'numCols_2' logical vector to subset the 'worldrankings' dataframe
#   to a new dataframe called 'wR_num', containing only columns with numeric 
#   values.
wR_num <- YOUR_CODE


#use apply to check the class of each column to check the previous code
YOUR_CODE


# - Use apply() to compute the number of observations available in each column 
#   of the 'wR_num' dataframe that are not NA. 
n_numeric_obs <- YOUR_CODE
print(n_numeric_obs)

# - Sort the resulting number of observations vector with sort()  
n_numeric_obs_sorted <- YOUR_CODE
print(n_numeric_obs_sorted)

#plot a barplot of the number of observations per variable.  
barplot(YOUR_CODE)




# 6 lapply() #####################################
# - Use an lapply() iterate through the columns of 'wR_num' and calculate
#   the MEAN and MEDIAN of each column. These values should be combined inside
#   the body of the lapply() to be output together in the resulting list object
#   'meanAndMed', as a vector of length two.
#   NOTE: As the data has many NA values you should use the argument
#   'na.rm = TRUE' in mean() and median() to remove them from the calculation.
meanAndMed <- lapply(YOUR_CODE)
print(meanAndMed)



# 7 do.call() #######################################
# - Using do.call() along rbind(), combine the `meanAndMed` list into a matrix named 'stat_mat'.
# - Name the columns `mean` and `median`.
# - Use the transpose function (`t()`) to transpose the matrix so that
# the rowa are the mean and median and the columns correspond to the rW_num columns
YOUR_CODE
print(stat_mat)


#7.1 plot
# - Create a barplot() of the mean and median using the transposed matrix stat_mat.
# - Use the argument beside=TRUE to make the bars grouped and not stacked
# - Make the bar names visible using the arguments las and cex.names.
# - Change to Y axis scale to log using the argument log="y"
barplot(YOUR_CODE)




pathToData <- file.path(getwd() ,"worldRankings.Rdata")
load(file = pathToData)
worldrankings
