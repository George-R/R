setwd("~/Desktop/Computational Stats/R/R")


#does 2 equal 3?
2 == 3

#does 2 not equal 3
2 != 3

#is 2 less than 3
2<3

#is 2 less than or equal to 3
2 <= 3

#Vecotrs 

#creating a vector
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x

#operations
x * 3
x + 2
x - 3 
x / 4
x ^ 2
sqrt(x)

#optional vector creation
1:10
10:1
-2:3
5:-7

#create two vectors of equal length
x <- 1:10
y <- -5:4
#operations
x + y
x - y 
x*y
x/y
x^y
#check the length of each
length(x)
length(y)
#the length of them added together should be the same
length(x+y)

x + c(1,2)
x + c(1, 2, 3)

x <= 5
x > y
x < y

# all and any functions

x <- 10:1
y <- -4:5
any(x<y)

all(x<y)

nchar(y)

#accessing individual elements

x[1]
x[x<10]

#provide a name for each element of an array using a name-value pair
c(One = "a", Two = "y", Last = "r")

#create the vector
w <- 1:3
#name elements
names(w) <- c("a", "b", "c")
w

# Factor Vectors
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")
q2 <- c(q, "Hockey", "Lacrose", "Hockey", "Water Polo", "Hockey", "Lacrose")

q2Factor <- as.factor(q2)
q2Factor
as.numeric(q2Factor)


factor(x=c("High School", "College", "Masters", "Doctorate"), levels=c("High School", "College", "Masters", "Doctorate"), ordered=TRUE)

#Making Matrices

#column
v <- c(1, 5, 17, 0, 11)
w <- 1:5
m <- cbind(w,v)
m

#bind as rows
m<-rbind(w,v)
m

#bind matrices
rbind(m,m)
cbind(m,m)

#matrix function 
u<- matrix(1:6, nrow=2)
u

matrix(NA, nrow=3, ncol=2)
u[2,3]

#select subset
u[2, 1:2]
#all rows
u[,1:2]

u == 3
which (u ==3)

u[which(u == 3)] <-5
u

#make the first and third columns of u all 1s
u[,c(1,3)] <- rep(1,4)
u

#find dimensions of matrix
dim(u)
ncol(u)
nrow(u)

#transpose matrix
t(u)
t <- u + 3
t

#Matrix Algebra

u<- matrix(1:6, nrow=2)
u
u[3] <- 5
u

v <- 1:3
v

#multiplying matrices

u %*% v

u
t(u)

u %*% t(u)

#Chapter 5 Advacned Data Structures

theDF <-data.frame(First = x, Second = y, Sport = q)
theDF

#count rows
nrow(theDF)

#count columns
ncol(theDF)

#count both
dim(theDF)

names(theDF)

names(theDF[3])


#check and assign row names
rownames(theDF)

rownames(theDF) <- c("One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten")
rownames(theDF)

rownames(theDF) <- NULL
rownames(theDF)

head(theDF)
head(theDF, n = 7)

tail(theDF)

class(theDF)

# Access individual columns

theDF$Sport

# using square brackets, two elements are needed [row, column]
theDF[3 , 2]

#specify more than one column, use vector indices
theDF [3, 2:3]

#rows 3 and 5, column 2. Since only one column was selected it was returned as a vector
#column names will not be printed
theDF[c(3 , 5), 2]

#rows 3 and 5, columns 2 throught 3
theDF[c(3,5), 2:3]

#all of column 3
theDF[, 3]

#all of columns 2 through 3
theDF[, 2:3]

#all of row 2
theDF[2 , ]

#all of rows 2 through 4
theDF[2:4 , ]

#to access multiple column by name, make the column arguement a character vector of the names
theDF[, c("First", "Sport")]

#just the sport column
theDF[, "Sport"]
class(theDF[, "Sport"])

#just sport column
theDF["Sport"]
class(theDF["Sport"])

theDF[["Sport"]]
class(theDF[["Sport"]])

#ensure a singe column data frame, there is a third arguement: drop=false
theDF[, "Sport", drop=FALSE]

class(theDF[, "Sport", drop = FALSE])

theDF[, 3, drop = FALSE]
class(theDF[, 3, drop = FALSE])


#factors in data frames
newfactor <- factor(c("Pennsylvania", "New York", "New Jersey", "New York", "Tennessee", "Massachusetts", "Pennsylvania", "New York"))
model.matrix(~newfactor - 1)


#Lists
#create a three element list
list(1, 2, 3)


#create a single element list where the only element is a vector
list(c(1,2,3))

#two element list
#first is a three element vecor
#second is a five elelement vector

list3 <-list(1:3, 3:7)
list3

#two element list
#first element is a data.frame
#second element is a 10 elelment vecotr
list(theDF, 1:10)

#three element list
#first is a data frame
#second is a vector
#third is list 3 which holds two vector
list5 <- list(theDF, 1:10, list3)
list5

#names 

names(list5)
names(list5) <- c("data.frame", "vector", "list")
names(list5)

list5

#names using name value pairs

list6 <- list(TheDataFrame = theDF, TheVector = 1:10, TheList = list3)
names(list6)
list6

#create empty list
(emptyList <- vector(mode = "list", length = 4))

#access individual elements 
list5[[1]]
list5[["data.frame"]]

#nested indexing of elements
list5[[1]]$Sport
list5[[1]][, "Second", drop = FALSE]

#how long is the list5
length(list5)

#add fourth element
list5[[4]] <- 2
length(list5)

#add fifth element
list5[["NewElement"]] <- 3:6
length(list5)

names(list5)
list5

#Matrices
#create a 5x2 matrix
A <- matrix(1:10, nrow = 5)
B <- matrix(21:30, nrow = 5)
C <- matrix(21:40, nrow = 2)
A
B
C

nrow(A)
ncol(A)
dim(A)

A+B
A*B

A == B
A%*%t(B)
colnames(A)
rownames(A)
colnames(A) <-c("Left", "Right")
rownames(A) <-c("1st", "2nd", "3rd", "4th", "5th")
colnames(B)
colnames(B) <-c("First", "Second")
rownames(B) <-c("One", "Two", "Three", "Four", "Five")

colnames(C) <- LETTERS[1:10]
rownames(C) <- c("Top", "Bottom")

rownames(A)

t(A)

A%*%C


#Arrays: multidemnsional vector
#all be the same type
#individual elements accessed with []
#elements: 1st row index, 2nd column index, outer dimensions

theArray <- array(1:12, dim=c(2, 3, 2))
theArray
theArray[1, ,]
theArray[1, , 1]
theArray[, , 1]

theUrl <- "tomato.csv"
tomato <-read.table (file = theUrl, header = TRUE, sep = ",")
head(tomato)

x <- 10:1
y <- -4.5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "SOccer")
theDF <- data.frame (First=x, Second = y, Sport = q,stringsAsFactors = FALSE)
theDF$Sport


head(ordersTable)

#save the tomato data.frame to disk
save(tomato, file = "R.rdata")

#remove tomato from memory
rm(tomato)
#check if it still exists 
head(tomato)

#load it from the rdata file
load("R.rdata")
head(tomato)

#create some objects
n <- 20
r <- 1:10
w <- data.frame(n,r)
n
r
w

save(n, r, w, file = "R.rdata")
rm(n, r, w)
n
r
w
load("R.rdata")
n

require(ggplot2)
