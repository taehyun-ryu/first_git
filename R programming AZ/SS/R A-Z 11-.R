
### 11 - "while" loop

while(TRUE){
  print("Hello")
}

counter <- 1
while(counter <12){
  print(counter)
  counter <- counter + 1
}


### 13 - "for" loop

for(i in 1:5){
    print("Hello R")
}


for(i in 5:10){
  print("Hello R")
}


### 14 - "if" statement

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


