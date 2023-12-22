## exercise 2 - 2024 ##
# Read the instructions carefully and contact the TAs with any questions you may have.
# IMPORTANT!: Don't use CHATGPT to solve the questions. Consult one of the TA instead. 
# Please submit the assignment file according to the template Ex2_First Name_Last Name.R
# In this exercise, use only functions you have learned in class so far in addition to these functions:
# mathematical operators, +-*^/ and %%, and logical operators, == != > < >= <=, are allowed
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

#getting the First and srcond muners from the vector
SecondDigFromNumList <- NumericList%%10 
FirstDigFromNumList <- (NumericList %/% 10) # nolint

#counter of conditions
ConditionCount <- rep(0 , length(NumericList))

#1st condition
ConditionCount <- ConditionCount + (NumericList%%7 == 0)

#2nd condition
ConditionCount <- ConditionCount + (grepl("7",NumericList)) # asking a logistic Q and hold it under var # nolint

#3rd condition
ConditionCount <- ConditionCount + (FirstDigFromNumList+SecondDigFromNumList == 7) # nolint

#4th condition
ConditionCount <- ConditionCount + abs((FirstDigFromNumList - SecondDigFromNumList) == 7) 

#assigning "BOOM" as the number with more then 2 in condition counter
NumericList[ConditionCount >= 2] = "BOOM"

#assigning to Game and printing
GAME <- NumericList # nolint
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
Dec_num = 2024
NumberOfDig <- (log2(Dec_num))
VecOfDivition <- 2^(NumberOfDig:0)
LengthOfBinNum <- length(floor(VecOfDivition%%2))
LengthOfBinNumIndex <- c(LengthOfBinNum:1)
Bin_num <- floor(VecOfDivition%%2)[LengthOfBinNumIndex]##super impotent - this is the way to nit use rev!!!
print(Bin_num) #[1] 11111101000


### Convert DNA string into RNA string ###
# Convert the DNA string in the variable DNA.string to an RNA string.
# Change A to U, T to A, G to C and C to G
# Store the solution in a variable called RNA.string and print it. No need to worry about the reverse complement.

#getting DNA seq
DNA.string = "ATGATCTCTGATATTCAAAACCACTCAGATGATGAGTCAAAAAATAATAAACCTTTCTTATTGTTTATGATAAATAATAATTGA"

#making 2 vector 
DNA.Letters <- c("A","G","C","T")
RNA.Letters <- c("U","C","G","A")

#making dictionary
names(RNA.Letters) <- DNA.Letters

DNA.stringUnlist <- unlist(strsplit(DNA.string , ""))
RNA.string <- RNA.Letters[DNA.stringUnlist]
RNA.string <- paste(RNA.string, collapse = "")
print(RNA.string)

### Convert RNA string into a protein ###
# Run the following lines of code. The code will generate a named vector you can use to convert codons into amino acids
# Make sure your file is in the same folder as #the RDS file, or the working directory is the same as the RDS file
# use getwd() to see where is your current working directory. https://www.youtube.com/watch?v=TDKyTT1kAMQ 
# use setwd() to set a new working directory. https://www.youtube.com/watch?v=TDKyTT1kAMQ

# Convert the DNA string in the variable DNA.string to an amino acids string. 
# The first codon should be ATG then ATC, TCT... 
# Store the solution in a variable called aa.string and print it

#importing the AA dict
#Note!!@!@!@!@ - assuming the file is in getwd!!! 
codon.to.aa = readRDS('Exercises/Ex2/codons_to_aa.Rds')

#using strsplit with weird syntax to separate every three character 
DNA.stringTo3 <- unlist(strsplit(DNA.string, "(?<=.{3})",perl = T))

#assigning to var the full aminoA seq 
#[1:(length(DNA.stringTo3)-1) is to not have the "stop" at the end of the seq
aa.string <- paste(codon.to.aa[DNA.stringTo3][1:(length(DNA.stringTo3)-1)], collapse = "")

#printtttt
print(aa.string)