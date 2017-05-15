# Homework Assignment (George Redak)

# 1.a.
#create vector u
u <- 1:9
u <-sample(u, 3)
u

#create vecotr v
v <- 1:9
v <-sample(v, 3)
v

# 1.b.
u-v

# 1.c.
u%*%v

# 1.d.

t<- u+v
t
mean(t)
t[which(t>8.66667)] <- 0
t

# 2.a.

#create radom permutation
s <-1:6
s <-sample(a, 6)
s

#make matrix with random permutation vector
m <- matrix(s, nrow=2)
m

# 2.b
at <- m %*% u
at
# 2.c.

ar <- u %*% t(m)
ar
am <- t(m)

# the result of m times u is equal to the transposed result of t(m) and u
# m%*%u=t(u%*%am

m%*%u==t(u %*% am)
t(ar) == at


#2.d 
m %*% m
#error because the number of rows and columns are the same for both matrices
#transpose m would make it work

m %*% t(m)

