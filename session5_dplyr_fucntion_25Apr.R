# DPLYR

# Data Manipulation

install.packages("dplyr")
install.packages("purrr")

install.packages("tidyselect")
library(dplyr)

install.packages("nycflights13")
data(package = "nycflights13")
library(nycflights13)
View(flights)

install.packages("backports")

# select()
# filter()
# distinct()
# arrange()
# mutate()
# transmute()
# summarise()
# sample_n()
# sample_frac()
# 
# Joins:
# inner_join()
# left_join()
# right_join()
# anti_join()
# full_join()

# Select

select(flights,year,month,day)
View(select(flights,year,month,day))
# Arrange columns as you want 
View(select(flights,day,month,arr_time))
# Select by index no
View(select(flights,2,4,6,10))
# Remove 1st COlumns from output
View(select(flights,-1))

subset_data <- select(flights,2,4,6,10)

# Select Only 1st row
View(head(flights,1))
View(head(flights,15))


# Filter

filter(flights,carrier=="UA")
View(filter(flights,carrier=="UA"))
# Filter with 2 conditions
View(filter(flights,carrier=="UA", arr_delay > 15))
# Above command with , and below with & is same
View(filter(flights,carrier=="UA" & arr_delay > 15))

View(filter(flights,carrier=="UA",origin == "JFK"))

View(filter(flights,carrier=="UA"| origin == "JFK"))

# Slice

slice(flights,20:40)
# Will select rows from 20 to 40 without any condition
View(slice(flights,20:40))

View(slice(subset_data,20:30))


# Arrange

# Sorting of rows as ascending or descending

View(arrange(flights,arr_delay))
View(arrange(flights,desc(arr_delay)))

View(arrange(flights,carrier,desc(arr_delay)))

# Distinct

View(distinct(flights,carrier))

View(arrange(distinct(flights,carrier,origin),carrier))

write.csv(arrange(distinct(flights,carrier,origin),carrier),file = "flights.csv")


# Mutate 
# To create calculated field from the existing ones

# All the columns along with the mutated one
 View(mutate(flights, ratio=dep_delay / arr_delay))
 
 # ONly the calculated column, no other columns are displayed
 View(transmute(flights, ratio=dep_delay / arr_delay))
 
 # Sample
 
View(sample_n(flights,10))
 
View(sample_frac(flights,.01))


# Q. Retrieve the columns carrier , arr_delay, dep_delay sorted by carrier

View(arrange(select(flights,carrier,arr_delay,dep_delay),carrier))

View(sample_n(filter(flights,carrier=="UA"),10))

# Q. We want sample of 10 rows of UA carrier sorted by arr_delay with origin , dest
View(arrange(sample_n(filter(select(flights,carrier,arr_delay,origin,dest),carrier=="UA"),10),arr_delay))


# Pipe operator %>%

flights %>% select(carrier,arr_delay,origin,dest) %>% filter(carrier == "UA") %>% sample_n(10) %>% arrange(arr_delay) %>% View()


# Summarise

summarise(flights, average=mean(arr_delay, na.rm=T))

summarise(flights, Sum = sum(dep_delay,na.rm=T), Min = min(dep_delay, na.rm = T))


mean(flights$dep_delay)
mean(flights$dep_delay,na.rm = T)

# Summary can
sum()
mean()
median()
min()
max()
sd
count()

# NA i.e. blank value representation in dataset
# Numeric field ---> NA
# Character field ---> <NA>
  
# Exercise

View(mtcars)
head(mtcars)

# Return rows of cars that have an mpg value greater than 20 and 6 cylinders.
View(filter(mtcars,mpg > 20 & cyl== 6))
mtcars %>% filter(mpg > 20, cyl== 6 ) %>% View()

# Reorder the Data Frame by cyl first, then by descending wt.
View(arrange(mtcars,cyl,desc(wt)))
mtcars %>% arrange(cyl,desc(wt)) %>% View()

# Select the columns mpg and hp
View(select(mtcars,mpg, hp))

# Select the distinct values of the gear column.
View(distinct(mtcars,gear))

# Create a new column called "Performance" which is calculated by hp divided by wt.
View(mutate(mtcars,Performance = hp/wt))

# Find the mean mpg value using dplyr.
summarise(mtcars,mean(mpg))

# Use pipe operators to get the mean hp value for cars with 6 cylinders
mtcars %>% select(hp,cyl) %>% filter(cyl == 6) %>% summarise(mean(hp,na.rm = T))



# ------ 26th Apr 2020 --------------


# Joins

ID <- c(1,2,3,4,5)
Age <- c(15,17,19,21,24)
subject.id <- c(1,2,3,4,5)

stud.data <- data.frame(ID, Age,subject.id)

subject.id <- c(1,2,5,7,8)
subjects <- c('Eng','Hindi','Maths','Science','Hist')

subj.data <- data.frame(subject.id,subjects)

View(stud.data)
View(subj.data)

library(dplyr)

inner_join(stud.data,subj.data,by='subject.id')

left_join(stud.data,subj.data,by='subject.id')

right_join(stud.data,subj.data,by='subject.id')

full_join(stud.data,subj.data,by='subject.id')

anti_join(stud.data,subj.data,by='subject.id')

semi_join(stud.data,subj.data,by='subject.id')

View(select(inner_join(stud.data,subj.data),ID,Age))


subjects.id <- c(1,2,5,7,8)
subjects <- c('Eng','Hindi','Maths','Science','Hist')

subjt.data <- data.frame(subjects.id,subjects)

# If Joining column name are not same in both the table

# Shows common data between 2 table basis on 1 column
inner_join(stud.data,subjt.data,by=c('subject.id'='subjects.id'))

# Shows left table data between 2 table basis on 1 column
left_join(stud.data,subjt.data,by=c('subject.id'='subjects.id'))

# Shows right table data between 2 table basis on 1 column
right_join(stud.data,subjt.data,by=c('subject.id'='subjects.id'))


full_join(stud.data,subjt.data,by=c('subject.id'='subjects.id'))

anti_join(stud.data,subjt.data,by=c('subject.id'='subjects.id'))

semi_join(stud.data,subjt.data,by=c('subject.id'='subjects.id'))



install.packages("readxl")

library(readxl)

orders <- read_excel("Sample - Superstore.xls",sheet = "Orders")

returns <- read_excel("Sample - Superstore.xls",sheet = "Returns")

View(orders)
View(returns)
semi_join(orders,returns,by="Order ID") %>% View()

semi_join(orders,returns,by="Order ID") %>% summarise(sales_lost = sum(Sales))
right_join(orders,returns,by="Order ID") %>% summarise(sales_lost = sum(Sales))

semi_join(orders,returns,by="Order ID") %>% filter(Region=='West') %>% View()

# Composite keys - Below is just example Customer ID does not exits
# semi_join(orders,returns,by=c("Order ID","Customer ID") %>% summarise(sales_lost = sum(Sales))


group_by(orders,Region) %>% summarise(sum(Sales))



# For joining 3 tables
# table1, table2, table3

level1 <- inner_join(table1,table2,by="col1")
level2 <- left_join(level1,table3,by="col2")