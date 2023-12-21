## exercise 2 - 2024 ##
# Read the instructions carefully and contact the TAs with any questions you may have.
# IMPORTANT!: Don't use CHATGPT to solve the questions. Consult one of the TA instead. 
# Please submit the assignment file according to the template Ex2_First Name_Last Name.R
# In this exercise, use only functions you have learned in class so far in addition to these functions:
# mathematical operators, +-*^ and %%, and logical operators, == != > < >= <=, are allowed
# grepl()
# floor()
# ceilling()
# abs()
# as.____() functions family. for example, as.numeric/as.character...
# strsplit()
# length
# sum()
# unlist()
# readRDS
#### 7-BOOM, the epic version###
# Print (use print()) a vector of the numbers starting from 1 to 99 and replace every number that satisfied 2 of the 4 conditions with the word "BOOM".
# Conditions: divisible by 7 (e.g., 14), has the digit 7 (e.g., 17 ), the digits sum up to seven (e.g., 25) or the absolute difference between the digits is 7 (e.g., 92 and 29). 
# save the final vector in the variable "GAME" and print it.
NumericList <- 1:99 #making a list of number from 1 to 99
LogisticValue <- (NumericList%%7 == 0) # asking a logistic Q and hold it under var # nolint
NumericList[LogisticValue] <- "BOOM"

LogisticValue <- (grepl("7",NumericList)) # asking a logistic Q and hold it under var # nolint
NumericList[LogisticValue] <- "BOOM"

NumericList <- 1:99 #making a list of number from 1 to 99
df<- as.data.frame(NumericList)
df$NumericListAsStr <- as.character(df$NumericList)
df$NumericListAsStrSplit <- strsplit(df$NumericListAsStr,"")
head(df)
# df$NumericListAsStrSplit <- gsub("[c(\"]", "",paste(df$NumericListAsStrSplit))
# df$NumericListAsStrSplit<- gsub("[)]", "",df$NumericListAsStrSplit)
str(df[,'NumericListAsStrSplit'])

# df$SumNumericListAsStrSplit <- 
class(df$NumericListAsStrSplit)
sum(as.numeric(df$NumericListAsStrSplit), na.pass= T)

GAME = ???
print(GAME)



### Convert a binary number into a decimal number ### 
# For further explanation see the video:  https://www.youtube.com/watch?v=VLflTjd3lWA
# Write a code that converts the binary number stored inside the variable "Binary" into a decimal number.
# Save the solution inside the variable "Decimal" and print it. 
# Make sure your code is general enough, and can convert any binary number.
Binary = 1101

#from bin to vector od numeric
VectorOfNum <- as.vector(as.numeric(unlist((strsplit(as.character(Binary) , "")))))
#getting length of bin num and substractin 1 (couse i need to sthar form 0 up to the length)
length1 <- length(VectorOfNum) -1
#new vecor from 0 to the tke length -1
IndexOfLength <- as.numeric(as.vector(0:length1))
#new var names CoeVar stand as the var holds the result of this arithmetics operation
CoeVar <- 2 ^ IndexOfLength
#continu with the math
VectorOfNum <- VectorOfNum * CoeVar
#getiing the decimal using sum and store it 
Decimal = sum(VectorOfNum)
print(Decimal)

###Convert a decimal number into a binary number ### 
# for further explanation: https://www.youtube.com/watch?v=1TxAm9931TE
# Write a code that converts the decimal number stored inside the variable "Dec_num" into a binary number. 
# Save the solution inside the variable "Bin_num" and print it. 
# Make sure your code is general enough, and can convert any decimal number.
[ENTER CODE HERE]
Dec_num = 2024

Bin_num = ???
print(Bin_num)
### Convert DNA string into RNA string ###
# Convert the DNA string in the variable DNA.string to an RNA string.
# Change A to U, T to A, G to C and C to G
# Store the solution in a variable called RNA.string and print it. No need to worry about the reverse complement.
[ENTER CODE HERE]
DNA.string = "ATGATCTCTGATATTCAAAACCACTCAGATGATGAGTCAAAAAATAATAAACCTTTCTTATTGTTTATGATAAATAATAATTGA"

RNA.string =???
print(RNA.string)
### Convert RNA string into a protein ###
# Run the following lines of code. The code will generate a named vector you can use to convert codons into amino acids
# Make sure your file is in the same folder as #the RDS file, or the working directory is the same as the RDS file
# use getwd() to see where is your current working directory. https://www.youtube.com/watch?v=TDKyTT1kAMQ 
# use setwd() to set a new working directory. https://www.youtube.com/watch?v=TDKyTT1kAMQ

codon.to.aa = readRDS("codons_to_aa.Rds")

# Convert the DNA string in the variable DNA.string to an amino acids string. 
# The first codon should be ATG then ATC, TCT... 
# Store the solution in a variable called aa.string and print it

[ENTER CODE HERE]

aa.string = ???
print(aa.string)








