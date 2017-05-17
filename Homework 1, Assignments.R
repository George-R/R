# Homework Assignment (George Redak)

# 1.a.

```{r}
#create vector u

u <- 1:9
u <-sample(u, 3)
u
```

#create vector v
```{r}
v <- 1:9
v <-sample(v, 3)
v
```


# 1.b.

```{r}
# u subtract v
u-v
```


# 1.c.

```{r}
u%*%v
```

# 1.d.

```{r}

# create new vector called t (u+v)
t<- u+v
t

#find mean of t
mean(t)

#replace numbers with 0
t[which(t>8.66667)] <- 0
t
```

# 2.a.

```{r}
#create radom permutation
s <-1:6
s <-sample(s, 6)
s
```

```{r}
#make matrix with random permutation vector
m <- matrix(s, nrow=2)
m
```


# 2.b
```{r}
# use %*% to get dot product of m and u and assign it to new variable 
at <- m %*% u
at
```

# 2.c.
```{r}
# dot product of u and tranpose of m and assign to new variable
ar <- u %*% t(m)
ar
am <- t(m)
```

```{r}
# the result of m times u is equal to the transposed result of t(m) and u
# m%*%u=t(u %*% am)
m%*%u==t(u %*% am)
t(ar) == at
```


#2.d 

m %*% m
#error because the number of rows and columns are the same for both matrices
#transpose m would make it work

```{r}
m %*% t(m)
```

#3.a.
```{r}
#Random Permutation for Row 3
Number <- 1:12
Number<- Number2 <-sample(Number, 12)
# duplicate variable for future use

Number
Number2

#Unique characters for Row 2
Unique <- letters[seq( from = 1, to = 12 )]

#Get day for Row 1

require(lubridate)
# add the times for date row
time1 <- ymd(c("3025-01-31", "3025-02-28", "3025-03-31", "3025-04-30", "3025-05-31", "3025-06-30", "3025-07-31", "3025-08-31", "3025-09-30", "3025-10-31", "3025-11-30", "3025-12-31"))
time1

#find what day is each date
time2<- day(ymd(time1)) 
time25 <- wday(time1, label = TRUE) 
time25


#create data frame 
df1 <- df2 <- data.frame(time1, Unique, Number)
colnames(df1) <- c("Day", "Unique", "Number")
rownames(df1) <- c(1:12)

df1

#data frame structure
str(df1)

#randomize rows
df2 <- df1[sample(nrow(df1)),]
df3 <- df1[sample(nrow(df1)),]
df1
df2
df3
```


# 3.b. 
```{r}
#save csv
write.csv(df1, file = "df1.csv")


#load csv
#duplicate data frane (df2 will be the same thing but with all even numbers being 0)
df1 <- df2 <- read.table(file="df1.csv",header=TRUE,sep=",", row.names = 1 ,stringsAsFactors=FALSE)
df1
df2
```


#3.c.
```{r}
# find out what quarter each month is in and assign it to a variable
quarters <- quarter(df1[, 1])
quarters

#generate random quarter and assign it to a varaible
variable <- sample(quarters, 1)
variable

#replace Day column with quarters variable
df1[, "Day"] <- quarters
df1


# match new data.frame "Day" column to the random quarter assigned earlier
variable2 <- match(df1[, "Day"], variable)
variable2

#return the "Day" column to the orgiginal time format
df1[, "Day"] <- time1
df1

#select the specific columns in quarter
dfq <- df1[c(4:6), c("Day", "Number")]
dfq
```

# 3.d. 
```{r}
#replace all even Numbers in column with 0
#find all even numbers and replace them with 0 in the Number vector

Number2[which(Number2 %% 2 == 0)] <- 0
Number2

#replace the"Number" column with new number vector
df2[, "Number"] <- Number2

df2
df1
```


# 3.e. 

```{r}
#create list with U, v, m, df1

list1 <- list(u, v, m, df1)
list1

#name list
names(list1) <- c("Vector u", "Vector v", "Matrix m", "Data Frame")
list1

#choose the third's item second item
list1[[3]][, 2]
```


# 3.f.

```{r}
class(list1[[3]])
class(list1[3])

##      [[3]] vs [3]
##      [3] gives Matrix m as an element within the list, 
##      [[3]] gives us Matrix M as the matrix element that exists outside the list
```


## 4
## $$x=\frac{-b+/-\sqrt{b^2 - 4ac}}{2a}$$

    