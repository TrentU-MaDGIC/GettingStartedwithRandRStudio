# Getting Started with R
# Presented by Trent University Library's Maps, Data and Government Information Center
# Contact: madgichelp@trentu.ca 

#### Using R as a calculator #### 

# Running R code:
# In the console (bottom left pane) type: 123 + 789 
# and hit `Enter`.

# Now in your source pane (top left pane), type the following line:
# 3 * 5 and run the code by:
# with your cursor on line 15, click **Run** (top right of source pane) or 
# press  **Ctrl + Enter** or **Alt + Enter** (Command + Enter on Mac)
______

# How you run code is up to you.
# Use the source pane (the pane you reading this in) to save and edit code
# Any code written in the console is not saved

# For more complex calculations, R follows the order of operations (BEDMAS)
2 + 100 / 2 - 25 

# If in doubt, use brackets to ensure the desired order of operations
(2 + 100) / (2 - 25)

##### Challenge 1 #####
# Enter and run the following equation into the source pane
# (5^2) + (8*5) + 3

______




#### Objects #### 

# Objects are created using the **assignment operator**: <-
# To the left of <- is the object name
# and to the right of <- is the value to assign

# Create an object to indicate how much precipitation fell on Dec 31 2022 in mm
Prcp_mm_Dec312022 ______ ______

# Once an object is created, you can call the object by running just the name assigned
______

# Object names are case and spelling sensitive!
# If the name is wrong in any way, R will return an error 
prcp_mm_dec312022 # wrong case
Prc_mm_D312022 #misspelled

##### Major data types ##### 

# Numeric data: numbers with or without decimals
MeanTemp_C_Mar012023 <- ______
MeanTemp_C_Mar012023

# Integer: number value without decimal places
# To specify an integer, place an L at the end of the number
n_Ptbo_weatherstations <- ______
n_Ptbo_weatherstations

# Character data: text value, always in quotations, either "" or ''
# Any text within a single pair of quotations is a single character value
Data_Source <- ______
Data_Source 

# Logical: true, false, or missing values.  
# Logical values are defined in all capital letters **WITHOUT QUOTATIONS**
Precip_Mar112022 <- ______
Precip_Mar112022
Precip_Mar112022 <- T
Precip_Mar112022 

Precip_Mar102022 <- FALSE
Precip_Mar102022
Precip_Mar102022 <- F
Precip_Mar102022 

# An object's name represents the information stored in that object,
# so you can treat the object's name as if it were the assigned values
# For example: Use objects in calculations
Snow_mm_Dec242020 <- 17.26
Snow_mm_Dec252020 <- 6.84
Snow_mm_Dec262020 <- 1.96

Snow_mm_Dec242020 + Snow_mm_Dec252020 + Snow_mm_Dec262020

# Objects may be created from calculations
TotalHolidaySnowfall_mm_2020 <- Snow_mm_Dec242020 + Snow_mm_Dec252020 + Snow_mm_Dec262020
TotalHolidaySnowfall_mm_2020

##### Challenge 2 ##### 
# Create the following three objects:
#   
# an object named "x" with a value of 5
# an object named "b" with a value of 8
# an object named "c" with a value of 3
# 
# then use the objects to calculate (x^2) + (b * x) + c 

______
______
______

# Use the objects to run the following equation:
(x^2) + (b * x) + c 


#### Functions #### 

# Functions allow users to execute simple to complex commands quickly
# Different functions require different data types

# abs() calculates the absolute value of a number
______
# toupper() capitalizes all letters in the provided character
______

# Objects may be used in functions.
# Recall the objects: MeanTemp_C_Mar012023 and Data_Source
MeanTemp_C_Mar012023
Data_Source

# Numeric function
# abs(): Calculate the absolute value of MeanTemp_C_Mar012023
abs(______) 

# Character function
# toupper(): Capitalize all letters in Data_Source
toupper(Data_Source) 

# Functions can also be applied to provide us with more information about our data
# class(): returns the data type
class(MeanTemp_C_Mar012023)
class(Data_Source)


##### Functions: Getting Help #####

# To understand what a function does and how it works, 
# we can the function's help page with ?

# For example to view round()'s, rounding of numbers, help page:
______
# The help page will open in the bottom left pane

# Under **Usage**, check how round() is presented.
# The Usage section provides an overview of how to use the function, its inputs and arguments:
# round(x, digits = 0)

# The **Arguments** section describes what x and digits represent:
# x: an input numeric value
# digits:the number of decimals to be used

# Using round() and its help page, how would we round MeanTemp_C_2022 to TWO decimal places?
MeanAnnualTemp_degC_2022 <- 7.25
round(______) 

# round() is an example of a function with a single input and argument
# Some functions have with multiple arguments
# For example: rep(), the replicate elements function
?rep() 

# Under usage, rep() indicates the arguments of 'x' and '...'
# x is (almost) always an input value
# Meanwhile, '...' means there are optional arguments with no default values
# Scrolling down to the **Arguments** section we see '...' breaks down to:
# times: the number of times the input value will be repeated
# length.out: the number of elements in the output
# each: the number of times each input element is output

# If we run rep() by itself without specifying additional arguments.....

replicate_this <- 1:3
replicate_this

rep(replicate_this)
# the same thing is returned. As we did not specify how the input should be replicated

# Adding the 'times' argument will repeat the entire sequence (1, 2, 3) the indicated number of times
rep(replicate_this, ______ = 3) 

# Adding the 'each' argument will repeat the each sequence element (1, 2, 3) the indicated number of times
rep(replicate_this, ______ = 3) 

# Adding 'times' and 'each' will repeat each element and the entire sequence the indicated number of times
rep(replicate_this, each = 3, times = 3) 

# However, some R functions have no required input values and all optional arguments 
# For example, let's look at the seq(), sequence generation function
?seq 

# Notice under usage, it says 'seq(...)' indicating all optional arguments, but unlike rep()
# all of seq()'s optional arguments have default values (see "Default S3 method" on seq()'s help page)

# This means that we can run seq() without any additional input or arguments
seq() 

##### Challenge 3 (Multiple choice): ##### 
# From seq()'s help page, which of the following would return this sequence:
# [1] 3 7 11 15 19 23 27

# You can run each line by un-commenting it (delete the # at the start of the line)
# to check your answer

# seq(3, 4, 7)
# seq(from = 3, by = 4, length.out = 7)
# seq(from = 3, to = 30, by = 4)
# seq(from = 3, to = 32, by = 4)




#### Packages #### 

# R comes with a set of functions. However there are millions more available through packages.
# Packages allow you to install more functions into R to improve its capabilities.

# Let's look how to install and load a package by code vs. through the package pane

# Install and load the "dplyr" package by code:
# "dplyr" is a popular package for data manipulation

______ # install.packages() installs the package specified in quotations

______ # library() loads the specified package

# Install and load the "xlsx" package with the package pane:
# The "xlsx" package is used for importing and exporting Microsfot Excel workbooks
## 1. Select the **Packages** tab in the bottom right pane of RStudio.
## 2. Click Install
## 3. Enter "xlsx" in the "Packages (separate multiple with space or comma)" filed.
## 4. Click Install. If no errors are returned, the package is now installed.
## 5. Load the package by checking the corresponding box in the package page

# Similar to functions, packages have help pages which are accessed through help()
# Make you use specify it is a package! 
help(package = "xlsx") 

# Some packages also have official tutorials, known as Vignettes.
# To view these tutorials, use browseVignettes()
browseVignettes("xlsx") 

##### Challenge 4 ##### 
# Install and load the package "beepr" by R code or package pane
______ # or by package pane
______ # or by package pane

# Check if the package was installed and loaded by running the below function 
# Hint: turn on your sound 
beep() # This line does not need to be changed

# If you finish early, try changing the beep() function arguments to see what happens
# Hint: ?beep




#### Data Structures #### 

# Data structures will be exemplified by R built-in data sets

# Vector: a one dimensional series of same data type elements
# Vector examples:
LETTERS # Capitalized English alphabet
euro # Conversion rates between the various Euro currencies.

# Matrix: A two dimensional (rows and columns) structure with elements of the **same** data type
# Matrix example:
co2 # Atmospheric concentrations of CO2 are expressed in parts per million (ppm) and reported in the preliminary 1997 SIO manometric mole fraction scale.

# Array: A three dimensional (rows, columns, depth) structure with elements of the **same** data type
# Array examples: 
Titanic # the fate of passengers on the fatal maiden voyage of the ocean liner b
iris3 # iris3 contains the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris

# Data frame: A two dimensional (rows and columns) structure with elements of the **same and/or different** data types
# Data frame examples:
iris # iris contains the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris
warpbreaks # The Number of Breaks in Yarn during Weaving

# Lists: a data structure having components of the **same or different data structures**
# List example:
ability.cov # Six tests were given to 112 individuals. The covariance matrix is given in ability.cov.

# Vectors and data frames are the most commonly applied data structures. 
# Therefore, they will be the focus of this workshop.

##### Vectors #####

# Create vectors with combine: c()
# Vector elements are separated by commas.
Months <- ______("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", 
            "Sep", "Oct", "Nov", "Dec")
Months 

MaxMonthtemp_C_Ptbo_2022 <- c(3.62, 5.07, 17.67, 23.1, 29.26, 29.55, 
                              29.14, 30.64, 25.2, 22.7, NA, 14.58)
MaxMonthtemp_C_Ptbo_2022

Snow_Present_Ptbo_2021 <- c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE,
                            FALSE, FALSE, FALSE, TRUE, TRUE)
Snow_Present_Ptbo_2021

# Vectors have the potential to get quite large, making them hard to see in the console
# Therefore we can use functions to view smaller parts of the vector
# head(): returns the first 6 values
______(MaxMonthtemp_C_Ptbo_2022, n = 6)

# tail(): returns the last 6 values
______(MaxMonthtemp_C_Ptbo_2022, n = 6)

#length(): returns how many elements are in a vector
length(MaxMonthtemp_C_Ptbo_2022)

# Individual vector values with arithmetic (i.e., add, subtract, divide) or functions 

MaxMonthtemp_C_Ptbo_2022 + 20

# log(): computes logarithms of each element, by default natural logarithms.
log(MaxMonthtemp_C_Ptbo_2022)

# tolower(): translates each character element to lower case
tolower(Months)


# Vectors alone provide little context to the data:
MaxMonthtemp_C_Ptbo_2022  

# We can improve the context by naming each element
# For example, let's add the months to each maximum monthly temperature (MaxMonthtemp_C_Ptbo_2022)

# names(): assigns names to each vector element
______(MaxMonthtemp_C_Ptbo_2022) <- ______

# Re-print MaxMonthtemp_C_Ptbo_2022 to see the names assigned
MaxMonthtemp_C_Ptbo_2022 


# We can also calculate descriptive statistics (e.g. mean (average), median, standard deviation, minimum, maximum)
# All base descriptive statistics functions require a numeric vector input.

# For example, calculate the standard deviation, sd(), MaxMonthtemp_C_Ptbo_2022 
sd(MaxMonthtemp_C_Ptbo_2022)

# Something is wrong, let's look at the vector:
MaxMonthtemp_C_Ptbo_2022

# November has an NA (missing value)
# We can address the NA value within sd()
______

# Set sd()'s na.
sd(MaxMonthtemp_C_Ptbo_2022, ______)


##### Data frames #####

# Data frames are constructed from vectors.
# Specifically, each vector represents a single column in the data frame

Ptbo_Temps <- data.frame(Year = rep(2021, 30),
                         Month = rep("May", 30),
                         Day = 1:30,
                         MeanTemp_C = c(7.585, 6.33, 10.53, 12.32, 11.93, 11.9, 
                                        12.935, 13.395, 16.325, 18.035, 19.89, 
                                        21.22, 20.085, 15.875, 13.365, 18.945, 
                                        18.3, 11.89, 6.32, 9.23, 10.39),
                         MinTemp_C = c(1.98, 1.94, 3.2, 4.65, 3.62, 3.04, 4.14, 
                                       4.29, 6.94, 9.19, 12.15, 13.18, 15.73, 
                                       9.14, 5.62, 10.72, 12.31, 7.05, 1.88, 
                                       0.86, 1.65),
                         MaxTemp_C = c(13.19, 10.72, 17.86, 19.99, 20.24, 20.76,
                                       21.73, 22.5, 25.71, 26.88, 27.63, 29.26, 
                                       24.44, 22.61, 21.11, 27.17, 24.29, 16.73, 
                                       10.76, 17.6, 19.13),
                         Source = rep("Daymet", 30))

# As data frames get large, it can be tricky to view them in the console
# Instead use functions to show only parts of the data frame for quick reference:

 # head(): returns a data frame's first six rows:
head(Ptbo_Temps, n = 6)

# tail(): returns a data frame's last six rows:
tail(Ptbo_Temps, n = 6)

# str(): compactly shows the data frame's internal structure
# this includes the number of rows, columns, column names, column data types, and first few values per column.
______(Ptbo_Temps)

# If you need to see the entire data frame, use View()
# View() will open the data frame in a new window 
______(Ptbo_Temps)

# Calculating descriptive statistics for data frames is similar to vectors. 
# However, you must specify which column is being considered with $
# Placing $ after a data frame's name, allows us to isolate a single column 
mean(______, na.rm = TRUE)

# Alternatively, we can use summary() 
# to generate descriptive statistics for each column
summary(Ptbo_Temps)

#### Data visualization and analysis ####

# The tabular structure of data frames allows us to relate variables
# for data analysis and visualization.

# The following will cover the basics of data visualization and analysis. 

# Let's import a full Daymet data set:

data_url <- "https://raw.githubusercontent.com/TrentU-MaDGIC/GettingStartedwithRandRStudio/main/Daymet_data.csv"
daymet_data <- read.csv(url(data_url)) 

# daymet_data represents daily climate measures for Peterborough, ON and its sister city, Ann Arbor, MI from 1980 to 2022. 
# Specifically, the *daymet_data* contains the following variables (columns):
#   
# City: the city for which the daily weather data was derived. Either Peterborough, ON, or its sister city, Ann Arbor, MI
# date: Full date of daily weather value
# year: Year value was recorded
# yday: Day of the year
# dayl_s: Duration of the daylight period in seconds per day. This calculation is based on the period of the day during which the sun is above a hypothetical flat horizon
# prcp_mm_day: Daily total precipitation in millimeters per day, the sum of all forms converted to water-equivalent. Precipitation occurrence on any given day may be ascertained.
# srad_W_m2: Incident shortwave radiation flux density in watts per square meter, taken as an average over the daylight period of the day. NOTE: Daily total radiation (MJ/m2/day) can be calculated as follows: ((srad (W/m2) * dayl (s/day)) / l,000,000)
# swe_kg_m2: Snow water equivalent in kilograms per square meter. The amount of water contained within the snowpack
# tmax_degC: Daily maximum 2-meter air temperature in degrees Celsius.
# tmin_degC: Daily Daily minimum 2-meter air temperature in degrees Celsius.
# vp_Pa: Water vapor pressure in pascals. Daily average partial pressure of water vapor.


head(daymet_data)

str(daymet_data)

# Simple data visualizations can be accomplished in R with
# the generic plotting function, plot().
# When a plot is created, it opens in the Plots pane

# Plot daily daylight and  maximum temperature:

# Plot can be used by the variable for each axis:
plot(x = daymet_data$daly_s, y = daymet_data$tmax_degC)

# or define a formula
# Formulas in R follow the format: Y ~ X

plot(tmax_degC ~ daly_s, data = daymet_data)

# Plots can be improved adding arguments.
# For example, we can define the axis labels and change point color
plot(tmax_degC ~ daly_s, data = daymet_data,
     xlab = "Daily Daylight (s)", 
     ylab = "Maximum Daily Temperature (\u00B0C)", # "u\00B0" is the unicode for the degree symbol
     col="grey")

# plot() defaults to a scatter plot
# To change the type of plot, include the argument "type"
# For more details, see ?plot()

plot(MeanTemp_C ~ Day, data = Ptbo_Temps,
     col="red", 
     type = "l", # type = "l" indicates a line plot
     xlab = "Day (May 2021)", 
     ylab = "Mean Daily Temperature (\u00B0C)")

# There are also pre-defined plotting functions available
# These allow for quick and easy creation of specific plots.

# hist() generates histograms
hist(daymet_data$tmax_degC, xlab = "Maximum Daily Temperature (\u00B0C)")

# boxplot() generates box plots
boxplot(tmin_degC ~ City, data = daymet_data, 
        ylab = "Minimum Daily Temperature (\u00B0C)", xlab = "City")

# Based on these data visualizations, there are some trends in the data we might want to analyze

# For example, there appears to be a linear relationship between daylight and maximum daily temperature
# We can statistically test the presence and strength of a relationship between two variables with correlation
# this is done with cor.test()

cor.test(daymet_data$daly_s, daymet_data$tmax_degC)

# Similarly, the box plot showed similar minimum temperature values
# To be sure the values are similar, we can conduct a t-test:

t.test(tmin_degC ~ City, data = daymet_data)

