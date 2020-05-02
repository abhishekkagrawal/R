# Visualizations

# Charts & Graphs

mtcars
# Default plot available in R
plot(mtcars$mpg,mtcars$wt)


# GGPLOT2
# Grammer of Graphics

install.packages("ggplot2")
library(ggplot2)


# Layers
# |-Data
# |-Aesthetics - They are basically x & y axis or other variables
# |-Geometry - This is type of chart like box, pie, bar plot & others
# Optional
# |-Coordinates - limiting the x & y axis values
# |-Facet - Breaking the charts in variable
# |-Theme - Colors
# |-Statistics


install.packages("ggplot2movies")
library(ggplot2movies)

View(movies)


# Histogram to find movies in particular range

ggplot(movies,aes(x=rating)) + geom_histogram()

ggplot(movies,aes(x=rating)) + geom_histogram(color='red', fill='blue',binwidth = .5)
ggplot(movies,aes(x=rating)) + geom_histogram(color='black', fill='green',bins = 10)

ggplot(movies,aes(x=rating)) + geom_histogram(color='black', fill='green',bins = 10) + 
  ggtitle('Histogram of Moview Rating')

ggplot(movies,aes(x=rating)) + geom_histogram(color='black', fill='green',bins = 10, alpha=0.4) + 
  ggtitle('Histogram of Moview Rating') + xlab('Rating') + ylab('Frequency')

hist_plot <- ggplot(movies,aes(x=rating)) + geom_histogram(color='black', fill='green',bins = 10,alpha=0.4) + 
  ggtitle('Histogram of Moview Rating') + xlab('Rating') + ylab('Frequency')
hist_plot


# Scatter Plot

# Correlation

# x axis should be independent
# y axis should be dependent
# 


# For Scatter plot - geom_point() to be used
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(color="green",size=4,shape=9)


install.packages("plotly")
library(plotly)


View(mtcars)
ggplot(mtcars,aes(x=wt, y=mpg)) + 
  geom_point(aes(color=factor(cyl), shape=factor(cyl), size=3))


ggplotly(ggplot(mtcars, aes (x=wt, y=mpg)) + 
           geom_point(size = 3, aes(shape = factor(cyl), color = factor(cyl))))



# Bar chart
mpg
View(mpg)

ggplot(mpg,aes(x=manufacturer)) + geom_bar(aes(fill=class))

ggplot(mpg,aes(x=manufacturer)) + geom_bar(aes(fill=drv),position = 'dodge')
ggplot(mpg,aes(x=manufacturer)) + geom_bar(aes(fill=drv),position = 'identity')
ggplot(mpg,aes(x=manufacturer)) + geom_bar(aes(fill=drv),position = 'stack')

ggplot(mpg,aes(x=class, y =cty)) + geom_bar(stat = 'identity')

ggplot(mpg,aes(x=class, y =cty)) + geom_bar(stat = 'identity') + theme_linedraw()
ggplot(mpg,aes(x=class, y =cty)) + geom_bar(stat = 'identity') + theme_dark()
ggplot(mpg,aes(x=class, y =cty)) + geom_bar(stat = 'identity') + theme_grey()

install.packages("ggthemes")
library(ggthemes)

# To show the sum on y axis
ggplot(mpg,aes(x=class, y =cty)) + geom_bar(stat = 'identity') + theme_hc()

ggplot(mpg,aes(x=class, y =cty)) + geom_bar(stat = 'summary', fun.y='sd')
ggplot(mpg,aes(x=class, y =cty)) + geom_bar(stat = 'summary', fun="mean")
ggplot(mpg,aes(x=class, y =cty)) + geom_bar(stat = 'summary', fun="sum")


