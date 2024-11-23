#===============================================================================
# 19 - Vector  
#===============================================================================

MyFirstVector <- c(3, 45, 56, 732)
MyFirstVector

is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)
class(MyFirstVector)

V2 <- c(3L, 12L, 243L, 0L)
is.numeric(V2)
is.integer(V2)
class(V2)

V3 <- c("a", "B23", "Hello")
class(V3)

int <- as.integer(c(3, 45, 56, 732))
class(int)


#===============================================================================

seq() #sequence - like ":"
rep() #replicate

seq(1,15)
1:15
seq(1:15)

seq(1,15,2)
z <- seq(1,15,4)
z

rep(1,15)
rep(3,50)
d <- rep(3,50)
d

rep("a",5)

x <- c(80,20)
y <- rep(x,10)
y


#===============================================================================
# 20 - Using the [] brackets
#===============================================================================

x <- c(1,123,534,13,4)  # combine
y <- seq(201,250,11)  # sequence
z <- rep("hi!",3) # replicate

w <- c("a", "b", "c","d","e")
w
w[1]
w[2]
w[3]

w[-1]
w[-3]

v <- w[-3]
v

w[1:3]
w[3:5]

w[c(1,3,5)]
w[c(-2,-4)]
w[-3:-5]

d
#===============================================================================
# 21, 22 - Vetorised operations
#===============================================================================

A <- c(1,2,3,4,5)
B <- c(6,7,8,9,10)
C <- c(9,8,7,6)
A+B
A-B
A*B
A/B

A>B
A<=B
A==B

B+C # error - lengths are different

#-------------------------------------------------------------------------------

x <- rnorm(5)
x

# R-specific programming loop
for (i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

# conventional programming loop
for(j in 1:5){
  print(x[j])
}

#-------------------------------------------------------------------------------

N <- 1000000
a <- rnorm(N)
b <- rnorm(N)

# vectorised approach

C <- a*b
C

# de-vectorised approach

d <- rep(NA, N)
for (i in 1:N){
  d[i] <- a[i]*b[i]
}


#===============================================================================
# 23 - Functions in R 
#===============================================================================

rnorm()
rnorm(5,10,8)
rnorm(5,mean=10,sd=8)

c()
?seq()
seq(from=10, to=20, by=3)
seq(from=10, to=20, length.out=100)
seq(from=10, to=20, along.with)

rep()
rep(5:6, each=10)

print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()

sqrt()
paste()

#?

?rnorm
?c
?mutate


#===============================================================================
# 24 - Packages in R
#===============================================================================

install.packages("ggplot2")

library(ggplot2)

?qplot
?ggplot
?diamonds

qplot(data=diamonds, carat, price, colour=clarity, facets=.~clarity)


#===============================================================================
# Homework - Financial Statement Analysis
#===============================================================================

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution





#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#Calculate Profit As The Differences Between Revenue And Expenses
profit <- revenue - expenses
profit

#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
tax <- round(0.30 * profit, digits=2)
tax 

#Calculate Profit Remaining After Tax Is Deducted
profit.after.tax <- profit - tax
profit.after.tax

#Calculate The Profit Margin As Profit After Tax Over Revenue
#Round To 2 Decimal Points, Then Multiply By 100 To Get %
profit.margin <- round(profit.after.tax / revenue, 2) * 100
profit.margin

#Calculate The Mean Profit After Tax For The 12 Months
mean_pat <- mean(profit.after.tax)
mean_pat

#Find The Months With Above-Mean Profit After Tax
good.months <- profit.after.tax > mean_pat
good.months

#Bad Months Are The Opposite Of Good Months !
bad.months <- !good.months
bad.months

#The Best Month Is Where Profit After Tax Was Equal To The Maximum
best.month <- profit.after.tax == max(profit.after.tax)
best.month

#The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

#Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses / 1000, 0)
profit.1000 <- round(profit / 1000, 0)
profit.after.tax.1000 <- round(profit.after.tax / 1000, 0)

#Print Results
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month

#BONUS:
#Preview Of What's Coming In The Next Section
M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

#Print The Matrix
M



