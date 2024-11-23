#===============================================================================

mydata <- read.csv(file.choose())

install.packages("ggplot2")

ggplot (data=mydata[mydata$carat<2.5,], aes(x=carat, y=price, colour=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()

#===============================================================================
### 08 - Types of variables
#===============================================================================


# integer
x <- 2L
typeof(x)

# double
y <- 2.5
typeof(y)

# complex
z <- 3+2i
typeof(z)

# character
a <-"h"
typeof(a)

# logical
q1 <- T
typeof(q1)
q2 <- FALSE
typeof(q2)



#===============================================================================
### 09 - Using variables
#===============================================================================

A <- 10
B <- 5

C <- A+B
C

# variable 1
var1 <- 2.5
# variable 2
var2 <- 4

result <- var1/var2
result

answer <- sqrt(var2)
answer

greeting <- "Hello"
name <- "Bob"
message <- paste(greeting, name)
message


#===============================================================================
### 10 - Logical variables and operations
#===============================================================================

# logical:
# TRUE T
# FALSE F

4 < 5
10 >100
4 == 5

# ==
# !=
# <
# >
# <=
# >=
# !
# |
# &
# isTRUE(x)

result <- 4<5
result
typeof(result)

result2 <- !TRUE
result2

result | result2
result & result2

isTRUE(result)

#===============================================================================
### 11 - "while" loop
#===============================================================================

while(TRUE){
  print("Hello")
}

counter <- 1
while(counter <12){
  print(counter)
  counter <- counter + 1
}

#===============================================================================
### 13 - "for" loop
#===============================================================================

for(i in 1:5){
  print("Hello R")
}


for(i in 5:10){
  print("Hello R")
}

#===============================================================================
### 14 - "if" statement
#===============================================================================

x <- rnorm(1)
if(x > 1){
  answer <- "greater than 1"
} else{
  answer <- "less than 1"
}


x <- rnorm(1)
if(x > 1){
  answer <- "greater than 1"
} else{
  if(x>=-1){
    answer <- "between -1 and 1"            
  } else{
    answer <- "less than -1"
  }
}



x <- rnorm(1)
if(x > 1){
  answer <- "greater than 1"
} else if(x>=-1){
  answer <- "between -1 and 1"            
} else{
  answer <- "less than -1"
}

#===============================================================================
# Homework - Law of Large Numbers
#===============================================================================


N <- 10000000 # input
counter <- 0 
for(i in rnorm(N)){
  if(i > -1 & i < 1){
   counter <- counter + 1 
  }
}
counter / N

# compare to: 68.2% or 0.682

