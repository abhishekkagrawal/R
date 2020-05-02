5+8

"Hello"

a = 10

b <- 20

# comment



setwd("C:/Users/azagraw/source/git_repo/github/R_RStudio")
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

# Indexing
student.weight[3]
# Values at indexes 2 & 4
student.weight[c(2,4)]

# Slicing
student.weight[2:5] #Start from 2 till 5 index

sum(student.weight)
mean(student.weight)

student.weight
#Gives all items after removing values at particular index
student.weight[-5]

student.weight[student.weight > 60]
student.weight[student.weight < 80]

student.names<-c("stud1", "stud2", "stud3", "stud4", "stud5", "stud6")
student.names

names(student.weight) <- student.names
# Naming a vector 
student.weight

# Generate a vector using sequence
roll_no<- seq(5,10)
roll_no
roll_no_new<- seq(2,20, by=2)
roll_no_new

# ------------------

# Matrix ---- 2D Array ---- will be of same type

matrix(data = 1:25, nrow = 5)

# Creating matrix using vector

vect1 <- seq(1,50)
mat1 <- matrix(vect1, ncol=10)
mat1

# Transposing the matrix
mat1 <- matrix(vect1, ncol=10, byrow = T)
mat1

mat2 <- matrix(data = 1:21, nrow = 7, byrow = T)
mat2


# Get particular data from matrix i.e. cell or row
mat1
mat1[5,3] #particular cell [row,column]
# All rows data
mat1[1,]

# All columns data
mat1[,1]

# First & second columns
mat1[, 1:2]

# Third & Fifth column ,c used for selective values
mat1[,c(3,5)]

# c used for selective values
# 1:2 for continuous values
mat1[, c(1:2)]
mat1[, 1:2]


# Giving names to rows in matrix
rownames(mat1) <- c("Row1","Row2","Row3","Row4","Row5")
mat1

# Giving names to columns in matrix
colnames(mat1) <- c("col1","col2","col3","col4","col5","col6","col7","col8","col9","col10")
mat1

#Find sum row wise
rowSums(mat1)

# Find sum column wise
colSums(mat1)



Infy<- c(120,180, 205,240,190)
TCS <- c(110,204,305,391,119)

mat3 <- matrix(c(Infy,TCS), nrow = 2, byrow = T)
rownames(mat3) <- c('Infy','TCS')
colnames(mat3) <- c('Day1','Day2','Day3','Day4','Day5')
#To remove column names
colnames(mat3) <- c()
mat3


#Bind new vector to existing matrix

CTS <- c(233,434,455,123,565)

mat3 <- rbind(mat3,CTS)
mat3

#Add new revenue values in matrix
Day6 <-c(185,210,150)
mat3<-cbind(mat3,Day6)


comp_avg <- rowMeans(mat3)
mat3 <- cbind(mat3,comp_avg)
mat3

#Update value in particular row,column 
mat3[2,4] <- 400
mat3
mat3['CTS','Day5'] <- 322
mat3

# Slicing & indexing on matrix
#Remove 1st row from matrix
mat3[-1,]

#Remove 6th column from matrix - Not permanent
mat3[,-6]
#Permanently naming changes in matrix
mat3<- mat3[,-6]

mat3<- mat3[,c(-6,-7)]
mat3

#Remove column from paritucaly position i.e. from middle
mat3[,-3]


# Data Frames

data()

AirPassengers

View(iris)
View(AirPassengers)
class(AirPassengers)

# Create our own Data Frame

id <- seq(1,5)
is_Male <- c(T,T,F,F,T)
name<- c('Abhishek','Amit','Sona','Mona','Arun')

df_info <- data.frame(id,is_Male,name)
df_info
View(df_info)