5+8

"Hello"

a = 10

b <- 20

# comment



setwd("E:/data_science/r_rstudio")
getwd()

# DataTypes
# Numeric
# Character
# Boolean / Logical
# Complex


num_var <- 24
class(num_var)
char_var <- "R_language"
class(char_var)
bool_var <- T
class(bool_var)
log_var <- FALSE
class(log_var)
comp_var <- 5+2i
class(comp_var)

is.character(char_var)
is.numeric(num_var)
is.logical(log_var)
is.complex(comp_var)


var1 = 12
var2 <- 23

var2 = as.character(var2)

bol1 <- 0
as.logical(bol1)

sum = var1 + as.numeric(var2)
sum

#  Data Structures

# Vectors - 1 Dimensional Array i.e. Value of same type
# Matrix
# Data Frames
# Factors
# Lists - Structure to different structures


# c stands for combined

# vector example
student.height <- c(120,155,164,170,183)
student.height
student.height[3]

student.rollno <- c(1,2,3,4,5)
student.rollno
student.rollno[8]

student.weight <- c(75,70,55,90,87,102)
# Index starts from 1 not from 0 as in Python
student.weight[3:6] #Start from 3 till 6 index
student.weight[0]
student.weight[6:2]
# student.weight[1:]