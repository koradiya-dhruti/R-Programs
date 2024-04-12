 "Hello World!"
 'Hello World!'

   10
   name1 = "Dhruti"
   name1
   
   
   
   name2 = "Khushi"
   name2
   
   
   name = "Diya"
   name
   
   age = 19
   age

   x = 25
   x

   num = "20"   
age=age+5   
age

num=num+5

4*8

text = "Excellent"
paste("ExcelR is",text)
paste("Students are",text)
paste("My name is : ",name)


#Assign same value to multiple variables in one line
var1 = var2 = var3 = "Orange"

# Legal variable Names

myvar = "Dhruti"
MYVAR = "Dhruti"
myVar = "Dhruti"
myvar2 = "Dhruti" #first letter ke bad number likh sakte hai number se start nahi kar sakte
my_var = "Dhruti"
this.year = 2024
# Starting should always be alphabet



# Illegal variable Names

2myvar = "D"
my-var = "D"
my var = "D"
_my_var = "D"
my_v@var = "D"
TRUE = "D"


# Data Types in R
# Numeric/Float - Decimal whole +ve -ve

x = 10.5
class(x)
class(name)

#Integer - whole +ve -ve L
y = 1000L
class(y)

# Character/string
x = "R is exciting"
class(x)

# logical/Boolean
x = TRUE # or T, FALSE, F
class(x)
x = F
class(x)



3>5
5>3
5==5 # Comparison operator
1!=6 # not equal to


# Arithmetic operators
x = 20
y = 3

x+y
x-y
x*y
x/y # float/decimal result
x^2
x %% y # modulus
x %/% y # integer division

2 * pi * 6378
pi


??Constants
LETTERS
letters
pi
month.abb
month.name


# Assignment operator
x = 50
50 -> x

# Built in Math Functions

max(25,78,10)
min(2,10,3)
sqrt(25)
abs(-4.5)

# Data Structures : vectors, DataFrames
# Homogeneous Vectors
# Vector of Strings
fruits = c("Banana","Apple","Orange","Strawberry")
class(fruits)
n1 = c(10,20,30,40,50)
class(n1)
n2 = c(T,F,TRUE,FALSE)
class(n2)

# Heterogeneous Vectors
mix = c(10,2.5,TRUE,5L,"Mango",F)
class(mix)


x = c(2,5,8,4)
y = c(1,9,9,9)

x+y

x*5
(x+y)*1.5


# Sequence
1:10
10:1


1:1000
40:45
seq(1,50,5) # start value, end value, step/increment/decrement value
seq(1,50,by=3)
seq(1,10)
seq(10,1,-2)# default increment/decrement is 1


n1 = 1.5:6.3 # default increment value is 1
n1

n1 = 1.5:6.5
n1


# Repetition
rep(45,7)
rep("Mango",5)

# Random Sample

sample(1:50,3)
sample(1:10,200) #error default value for replace=FALSE
sample(1:10,200,replace=TRUE)
sample(c("HP","Apple","Lenovo"),7,replace=T)
sample(c("HP","Apple","Lenovo"),2)

#################################

# Indexing / Accessing Vector elements
x = c(2,5,8,20,10,30,58)

x[7]

x[1]

x[8]

x[c(4,5)]

x[-1] # exclude 1st element

x[-2] # exclude 2nd element
x
x[-4]
x[c(-1,-4)]


x[1] = 3
x

x[-1] = 5
x

x[3] = 10
x[4] = 7
x
x[c(1,3)] # 1st and 2nd element will be desplayed
x[1,3] # Raise an error


y = c(1,9,9,9)
y
y<9

y[y<9] = 7
y

y[y>7] = 10
y

# Relational operators with vectors

marks = c(60,70,80,50,90)

marks>50

marks[marks>50]

marks == 80

names = c("Dhruti","Diya","Khushi","Pooja")
p1 = c('a','b')

"Pooja" %in% names

"Yashvi" %in% names

"pooja" %in% names

# Slicing

marks

marks[3:7]
marks[4]

marks[3] = 97
marks

marks[-3] = 100
marks

marks[6] = 90
marks

price = c(2999,449,29,650,2800,192,9384,373,474,4745)
price[2:7]

# select elements from a vector with conditions

price[price>1000]

sort(price)

sort(price,decending = T) # raise an error
help(sort)
sort(price,decreasing = T) # This is the correct command


help(mean)
length(marks)


help(paste)

paste(1:12)

nth = paste(1:12, c("st","nd","rd",rep("th",9)))
nth

month.name

month.abb

paste(month.abb, "is the",nth,"month of the year.")

paste(month.name, "is the",nth,"month of the year.")


# Basic Functions on vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
help(mode)
mode(price)


# Data Frames
# Slicing Data Frames
a = c(42,18,91,87,66)
b = c("p","q","r","s","t")

data.frame(a,b)
df = data.frame(a,b)

df1 = data.frame(
  Training = c("Strength","Stamina","Other"),
  Pulse = c(100,150,120),
  Duration = c(60,30,45)
)

df1

df1[,1] # all rows, 1st col

df1[2,]

df1[,3]

df1[,]

df1$Training


df2 = data.frame(
  Height = c(150,160),
  Weight = c(65,72)
)

food = data.frame(
  Name = c("Pav Bhaji","Mutton Biryani","Paneer Masala","Kaju Katli","Gulabjamun","Dosa"),
  Type = c("Veg","Nonveg","Veg","Veg","Veg","Veg"),
  Taste = c("Spicy","Spicy","Spicy","Sweet","Sweet","Spicy"),
  Price = c(120,315,420,340,90,300)
)

food

# Rows with food type : Veg

food[food$Type=="Veg",]

# Food names and prices of all Nonveg items

food[food$Type=='Nonveg',c(1,4)]
# or
food[food$Type=='Nonveg',c("Name","Price")]

# All spicy food with price less than 300

food[food$Taste=='Spicy' & food$Price<300,]

food[food$Taste=='Spicy' | food$Price<300,]


# Orange, mtcars are built in data set. Learn with this dataset.

Orange
mtcars

dim(mtcars) # no of rows and no of columns
nrow(mtcars) # no of rows
ncol(mtcars) # no of columns
str(mtcars) # structure - col names data type and values
summary(mtcars)

help(mtcars) # Information of dataset
mtcars$cyl # Individual col cyl Values
table(mtcars$cyl) # There are 11 cars having 4 cylinders, 7 cars - 6 cyl, 14 cars - 8 cyl
mtcars$gear
table(mtcars$gear)

# USArrests - another dataset
USArrests
help("USArrests")
View(USArrests)  # dataset opens in new windows in table structure

head(USArrests) # by default shows first 6 records
tail(USArrests) # by default shows last 6 records
head(USArrests,8)
tail(USArrests,10)

# check all available datasets
data()