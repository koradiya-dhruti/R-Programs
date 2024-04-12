
ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary = c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

plot(ages,salary)
plot(salary,ages)

help(plot)
###############################3

# click on import dataset
data()
airquality = datasets::airquality

### Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) # names of all columns
dim(airquality)

# To see entire dataset click on airquality data set name from work
####### Columns

airquality[,c(1,2)] # all rows and first two columns

df = airquality[,-6] # Excludes column no.6
df

summary(airquality[,1]) # summary statistics for column 1

summary(airquality$Temp)

airquality$Wind # Display column values

summary(airquality$Wind) # summary of wind column


################ summary of the data ############

summary(airquality) # summary for all columns

################## Visualization
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality) # scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)

# Points and lines
plot(airquality$Wind, type="p") # p: points, l: lines
plot(airquality$Wind, type="l")
plot(airquality$Wind, type="b")
help(plot)

plot(airquality$Wind,
     xlab = 'Ozone Concentration',
     ylab = 'No of Instances',
     main = 'Ozone levels in NY city',
     col = 'red',
     type = 'l')

plot(airquality,col='red') # plot of entire dataset 

plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Solar.R,airquality$Ozone)

#Horizontal bar plot
barplot(airquality$Ozone,
        main = 'Ozone Concenteration in air',
        ylab = 'Ozone levels',
        col = 'blue',
        horiz = T,
        axes = F)
help(barplot)

# Histogram

hist(airquality$Temp)

hist(airquality$Temp,
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.',
     col = 'blue',
     border = 'red')

help(hist)

# Single box plot
help("boxplot")

boxplot(airquality$Wind,
        main = 'Boxplot',
        col = 'blue',
        border = 'red',
        horizontal = T)

boxplot.stats(airquality$Wind)$out # outlier value

airquality$Ozone

# Multiple box plots
boxplot(airquality[,1:4], # sequentially 1 to 4
        main = 'Multiple Box Plots',
        horizontal = TRUE,
        col ='pink')

boxplot(airquality[,c(1,3)], # random column i need to pass it in c function 
        main = 'Multiple Box Plots',
        horizontal = TRUE,
        col ='pink')

####################################
# Margin of the grid(mar)(bottom,left,top,right),
# no of rows and columns(mfrow),
# Whether a border is to be included( bty),
# and position of the
# labels(las:1 for horizontal, las:0 for vertical)
# bty- box around the plot (o,n,7,L,C,U)

help(par)
par(mfrow = c(3,3), mar = c(1,2,1,2),  las = 0, bty = "o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Wind, type = "l")
plot(airquality$Solar.R, type = "l")
barplot(airquality$Ozone,
        main = 'Ozone Concenteration in air',
        ylab = 'Ozone levels',
        col = 'blue',
        horiz = T,
        axes = F)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main = 'Multiple Box plots')

# Considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm = T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)

# Google following functions as variance in R, etc
# Var
# skewness
# kurtosis
# Density plot

var(airquality$Wind)
sd(airquality$Ozone) #,na.rm = T) Standard Deviation # because of NA values in ozone col - No o/p
sd(airquality$Ozone, na.rm = T)

skewness(airquality$Ozone) # error
kurtosis(airquality$Ozone) # error

# Installing Packages

# which library to download for skewness
# google - skewness and kurtosis in r
# go to rbloggers.com
# library(moments)
# or go to rdocumantation.r

skewness(airquality$Ozone, na.rm = T)
kurtosis(airquality$Ozone, na.rm = T)
skewness(airquality[,1:4], na.rm = T)

# Density Plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone, na.rm = T))
??density # Check kernal Density estimation

## In Class Exercise
e_quakes = datasets::quakes