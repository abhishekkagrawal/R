#Data Frames

Name <- c('Amit','Sohan','Shyam','Rita','Mona')
Age <- c(45,34,38,22,31)
is_Male<- c(T,T,T,F,F)

df <- data.frame(Name, Age, is_Male)

df

View(df)

#Iris
# Iris Dataframe
View(iris)

# Top 6 rows from DataFrame
head(iris)
View(head(iris,15))

# Bottom 6 rows from DataFrame
tail(iris)
View(head(iris,15))

# Structure
str(iris)
str(df)

summary(df)


#Display particular column from DF
df$Name

df$Age

# Similar matrix way we can display data in df
df[,1:2]
df[2:3,c(1,3)]


#Read & load csv file
dataset<-read.csv("C:/Users/azagraw/source/git_repo/github/R_RStudio/diabetes.csv")

dataset_diabetes<-read.csv("diabetes.csv")
View(dataset_diabetes)

dataset_url<-read.csv("https://raw.githubusercontent.com/insaid2018/R/master/Data/diabetes.csv")
View(dataset_url)


#Remove any variable
rm(dataset1)

# Slicing i.e. removing particular column from ds
dataset_diabetes <- dataset_diabetes[,1:19]
# Remove below columns
dataset_diabetes <- dataset_diabetes[, -c(1,3,5,7,9,11)]
# Keeps below columns
dataset_diabetes <- dataset_diabetes[, c(1,3,5,7,9,11)]
View(dataset_diabetes)

# Write data in to csv
write.csv(dataset_diabetes,"updated_diabetes.csv")

ds_diabetes<-read.csv("diabetes.csv")


# Factors : It stores the data in the form of levels

climate <- c('hot','hot','cold','cold','warm','warm')
factor(climate)

# Define your own levels
factor(climate, levels = c('cold','warm','hot'))

factor(ds_diabetes$frame, levels = c('small',"medium",'large'))

# Data Structure : List
# Lists are used for storing different data structure
list_var <- list(ds_diabetes,climate)
list_var

# If Else conditions

x <- 20

if(x < 50){
  print("X is less than 50")
}else if( x > 50 & x <= 80){
  print("Between 50 and 80")
}else{
  print("X is greater than 80")
}

# Print Even or Odd

if(x %% 2 ==0){
  print("x is even no")
}else{
  print("x is odd no")
}

if(mod(x,2)!0){
  print("Odd")
}else{
  print("Even")
}


vect_num <- c(25,10,20)

if(vect_num[1] > vect_num[2] & vect_num[1] > vect_num[3]){
  print(paste("1st no is greater",vect_num[1]))
} else if(vect_num[2] > vect_num[1] & vect_num[2] > vect_num[3]){
  print(paste("2nd no is greater",vect_num[2]))
} else {
  print(paste("3rd no is greater",vect_num[3]))
}

# Loops

# While loop

z <- 15

while(z <= 10){
  print(paste("Hello",z))
  z <- z+1
}

val <- 1
multiplier <- 5

while( val <= 10){
  print(multiplier*val)
  
  if(val > 10){
    print("END")
  }
  val <- val+1
}

val <- 1
multiplier <- 5
while( val <= 10){
  result <- multiplier*val
  print(result)
  
  if(result > 50){
    print("END")
  }
  val <- val+1
}


# For Loop

v <- seq(2,20, by=2)

for(i in v){
  print("Hello")
}

for(i in v){
  print(paste('Value of i:',i))
}

# Table of 5 using for loop
v <- c(1:10)
for(i in v){
  print(paste(5,'x', i, '=', 5*i))
}

v <- c(1:10)
for(i in 1:10){
  print(paste(5,'x', i, '=', 5*i))
}

v <- seq(1:10)
for(i in v){
  print(paste(5,'x', i, '=', 5*i))
}

# Factorial of no

a = 1
v = c(1:10)
for (i in v){
  a=a*i
}
print (a)

# -------------------------

number = 5
Fact <-1
for (i in number:1)
{
  Fact <- Fact * i
}
print (Fact) 

# -------------------------
number <- 0

factorial <- 1
if(number< 0){
  print(paste("Incorrect input", number))
}else if(number == 0){
  print("Factorial of 0 is 1")
}else{
  for(i in (1:number)){
    factorial <- factorial * i
  }
  print(paste("factorial of ", number," is ", factorial ))
}

# Functions

add_num<- function(num1,num2){
  result <- num1+num2
  print(paste('Addition result:',result))
}

add_num(4,3)

# ------------------

factorial_function <- function(number) {
  
  if(number< 0){
    print(paste("Incorrect input", number))
  } else if(number ==0){
    print('Factorial of 0 is 1')
  } else{
    factorial <- 1
    for(i in (1:number)){
      factorial <- factorial * i
    }
    print(paste("factorial of ", number," is ", factorial ))
  }
}

factorial_function(-3)
factorial_function(5)

# ----------------------------

multiply <- function(num=10){
  return(num*2)
}
multiply()
multiply(4)

# ----------------------------

# Take value as input from prompt

a = readline(prompt = "enter the number")
a = as.integer(a)
print (paste("My number is: -",a))

