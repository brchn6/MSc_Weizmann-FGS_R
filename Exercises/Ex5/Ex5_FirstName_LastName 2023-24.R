# Exercise 5
# Submit the file in the correct name format
# Please contact us for questions
# The data and the functions you will use in the following exercise are from the package 
# renz. 

# In this exercise you will explore enzymatic kinetics.
# Load the data. Run this line of code:
ONPG.df = readRDS("Exercises/Ex5/ONPG.rds")
# Background about the OPNG.df, adopted from the renz pacakge:
#In the University of Málaga, Enzymology is a second-year subject that all Biochemistry students 
#must take. In the context of this subject, students carry out different experiments in the 
#laboratory, using Beta-galactosidase (EC. 3.2.1.23) as an enzyme model, to illustrate the effect of
#different variables on the rate of the enzyme-catalyzed reaction 
#(hydrolysis of o-nitrophenyl-Beta-d-galactopyranoside, ONPG). 
# One of these experiments consists in assessing the effect of the substrate (ONPG) concentration on 
# the initial rate. The current dataframe shows the results obtained by eight different student groups,
# as were presented in their reports.

# Load the following function:
MM.function = readRDS("Exercises/Ex5/MM.function.rds")

# This function receives two-columns data and analyzed it using the non-linear least-squares fitting of the Michaelis-Menten equation.
# For more information see: https://www.youtube.com/watch?v=7u2MkbsE_dw
# The function takes the following arguments (adopted from the renz pacakge):
# data:	
# a dataframe with two columns. The first column contains the values of the independent variable (substrate concentration), and the second column contains the initial rates.
# unit_S:	
# concentration unit (nM by default).
# unit_v:
# kinetics unit (a.u by default).
# plot:	
# logical. If true, the data and fitted curve are plotted.

# Output (adopoted from the renz package)
#A list of two elements. The first one is a vector containing the enzyme kinetic parameters.
# The second one is a dataframe with the original data plus the fitted value of v.

#load the renz library
# install.packages("renz")
library(renz, help, pos = 2, lib.loc = NULL)


# Exapmle:
# Column 1: contains the substrate concentrations
# Column 2: the observed kinetics of group 1
Analysis.results = MM.function(ONPG.df[,1:2])
# In "parameters" you can find the calculate Km and Vm (Vmax)
Analysis.results$parameters
# In "data" you can find a summary of the experiment, substrate concentrations, observed values and fitted values
Analysis.results$data


#######################
# Q1 #
# Look at the data. See that you understand it.
# Explore if there is any different between the groups.
# Print the observed Km and Vmax parameters for each group
ONPGGroupNames <- names(ONPG.df[-1])
Mainlist <- lapply(ONPGGroupNames , function(ONPGGroupNames) {
  result <-MM.function(data.frame(c(ONPG.df['ONPG'], ONPG.df[ONPGGroupNames])))
  return(result$parameters)
})
print(Mainlist)
# Naturally there are differences in the observed Km and Vmax. 
# Please plot the mean Km and the mean Vmax of all groups as a bar plot using ggplot.
# Add a text above the bars to indicate the value
# Hint: use geom_text, with nudge_y = 1.5
# Use Ex 5 2023-24 plot 1.pdf to see the expected result
library(ggplot2, help, pos = 2, lib.loc = NULL)
col_means <- apply(do.call(rbind, Mainlist), 2, mean)
col_means <- data.frame(parameters = names(col_means), avg = col_means)
p<- ggplot(data = col_means, aes (x= parameters ,y = avg))+
  geom_bar(stat = "identity")+
  geom_text(aes(label=avg), nudge_y = 5)
p
# Q2 #
# Now days it is a common request to see points that represent each observation.
# Add them to the plot (using ggplot).
# You will need to another layer of points using geom_point. 
# In geom text use nudge_y = 2
# look at Ex 5 2023-24 plot 2 to see the expected plot
df <- as.data.frame(do.call(rbind, Mainlist))
p <- p + geom_point(data = df, aes(x = "Km", y = Km),size= 2.3)
p <-p + geom_point(data = df, aes(x = "Vm", y = Vm),size= 2.3)
p
# Q3 #
# As you can see there is a problem, many points overlay each others.
# Add to the ggplot object the function scale_y_continuous(trans = "log2"), to change the scale of the 
# y-axis and to see better the data. 
# look at Ex 5 2023-24 plot 3 to see the expected plot

p <- p + scale_y_continuous(trans = "log2")
p
# Q4 #
# A different method will be to use geom_dotplot.
# use it instead of geom_point to nicely show the data
# geom_dotplot is a combination of points and histogram. you will need to add 
# stackdir = "center",binaxis = "y",dotsize = 0.5 inside geom_dotplot(). 
# use nudge_y = 3 in geom_text
# look at Ex 5 2023-24 plot 4 to see the expected plot

p<- ggplot(data = col_means, aes (x= parameters ,y = avg))+
  geom_bar(stat = "identity")+
  geom_text(aes(label=avg), nudge_y = 5)+
  geom_dotplot(data = df, aes(x = "Km", y = Km), stackdir = "center",binaxis = "y",dotsize = 0.5) +
  geom_dotplot(data = df, aes(x = "Vm", y = Vm), stackdir = "center",binaxis = "y",dotsize = 0.5)
p

# Bonus: add error bars to the plot
# Hint use geom_errorbar()
# You will need to add ymin and ymax values (iniside the aes()). ymin is the average Km or Vmax - SD of the Km or Vmax. 
# ymax is almost the same: The average Km or Vmax + SD of the Km or Vmax
# For more details: http://www.sthda.com/english/wiki/ggplot2-error-bars-quick-start-guide-r-software-and-data-visualization
# look at Ex 5 2023-24 plot 5 to see the expected plot

ENTER CODE HERE

# Q5 #
# Plot the data for each group.
# Show the dots (geom_point) of the observed values and add the fitted line (fitted_v) using geom_line() 
# Colors the points and lines based on the different groups.
# Add to the ggplot object scale_y_continuous(trans = "log2")
# look at Ex 5 2023-24 plot 6 to see the expected plot

ENTER CODE HERE


# Use facet_wrap() to show the results of each group in a subpanel 
# Look at Ex 5 2023-24 plot 7 to see the expected plot

ENTER CODE HERE
