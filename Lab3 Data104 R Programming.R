rm(list = ls())

x = 10
y <- 20
result <- sum(x = x, y = y)

############################################################
# 1. Check Whether a Number is Odd or Even
############################################################

num <- as.integer(readline("Enter a number: "))  ### python: input --- readline, int

if (num %% 2 == 0) {
  cat(num, "is an Even number\n")   #cat() stands for concatenate and print
} else {
  cat(num, "is an Odd number\n")
}


############################################################
# 2. Check Whether a Number is Positive, Negative, or Zero
############################################################

num <- as.integer(readline("Enter a number: "))

if (num > 0) {
  cat("Positive number\n")
  } else if (num < 0) {
    cat("Negative number\n")
  } else {
    cat("Zero\n")
}


############################################################
# 3. Find the Largest of Two Numbers
############################################################

a <- as.integer(readline("Enter first number: "))
b <- as.integer(readline("Enter second number: "))

if (a > b) {
  cat(a, "is larger\n")
} else {
  cat(b, "is larger\n")
}


############################################################
# 4. Find the Largest of Three Numbers
############################################################

a <- as.integer(readline("Enter first number: "))
b <- as.integer(readline("Enter second number: "))
c <- as.integer(readline("Enter third number: "))

if (a > b && a > c) {
  cat(a, "is the largest\n")
} else if (b > c) {
  cat(b, "is the largest\n")
} else {
  cat(c, "is the largest\n")
}


############################################################
# 5. Factorial of a Number (for loop)
############################################################

n <- as.integer(readline("Enter a number: "))
fact <- 1

for (i in 1:n) {
  fact <- fact * i
  
}

cat("Factorial of", n, "is", fact, "\n")


############################################################
# 6. Fibonacci Series (while loop)
############################################################

n <- as.integer(readline("Enter number of terms: "))

a <- 0
b <- 1
i <- 1

cat("Fibonacci series:\n")

while (i <= n) {
  cat(a, " ")
  c <- a + b
  a <- b
  b <- c
  i <- i + 1
}




############################################################
# 7. Sum of First n Natural Numbers (while loop)
############################################################

n <- as.integer(readline("Enter a number: "))
sum <- 0
i <- 1

while (i <= n) {
  sum <- sum + i
  i <- i + 1
}

cat("Sum of first", n, "natural numbers is", sum, "\n")


############################################################
# 8. Demonstration of break Statement
############################################################

cat("Numbers from 1 to 9 using break:\n")

for (i in 1:20) {
  if (i == 10) {
    break
  }
  cat(i, " ")
}



############################################################
# 9. Demonstration of next Statement
############################################################

cat("Numbers from 1 to 15 skipping multiples of 3:\n")

for (i in 1:15) {
  if (i %% 3 == 0) {
    next
  }
  cat(i, " ")
}



############################################################
# 10. Check Whether a Number is Prime (flag + break)
############################################################

num <- as.integer(readline("Enter a number: "))
flag <- TRUE

if (num <= 1) {
  flag <- FALSE
} else {
  for (i in 2:(num - 1)) {
    if (num %% i == 0) {
      flag <- FALSE
      break
    }
  }
}

if (flag) {
  cat(num, "is a Prime number\n")
} else {
  cat(num, "is NOT a Prime number\n")
}


############################################################
# 11. Check Whether a Number is Composite
############################################################

num <- as.integer(readline("Enter a number: "))
flag <- FALSE

if (num > 1) {
  for (i in 2:(num - 1)) {
    if (num %% i == 0) {
      flag <- TRUE
      break
    }
  }
}

if (flag) {
  cat(num, "is a Composite number\n")
} else {
  cat(num, "is NOT a Composite number\n")
}


############################################################
# 12. Check Whether a Number is Palindrome
############################################################

num <- as.integer(readline("Enter a number: "))
temp <- num
rev <- 0

while (temp > 0) {
  digit <- temp %% 10
  rev <- rev * 10 + digit
  temp <- temp %/% 10
}

if (num == rev) {
  cat(num, "is a Palindrome number\n")
} else {
  cat(num, "is NOT a Palindrome number\n")
}


############################################################
# 13. Check Whether a Number is Armstrong
############################################################

num <- as.integer(readline("Enter a number: "))
temp <- num
sum <- 0
digits <- nchar(num)

while (temp > 0) {
  digit <- temp %% 10
  sum <- sum + digit^digits
  temp <- temp %/% 10
}

if (sum == num) {
  cat(num, "is an Armstrong number\n")
} else {
  cat(num, "is NOT an Armstrong number\n")
}


############################################################
# 14. Check Whether a Number is Perfect
############################################################

num <- as.integer(readline("Enter a number: "))
sum <- 0

for (i in 1:(num - 1)) {
  if (num %% i == 0) {
    sum <- sum + i
  }
}

if (sum == num) {
  cat(num, "is a Perfect number\n")
} else {
  cat(num, "is NOT a Perfect number\n")
}


############################################################
# 15. Print Prime Numbers in a Given Range
############################################################

start <- as.integer(readline("Enter start value: "))
end <- as.integer(readline("Enter end value: "))

cat("Prime numbers in the range:\n")

for (num in start:end) {
  if (num <= 1) next
  
  flag <- TRUE
  for (i in 2:(num - 1)) {
    if (num %% i == 0) {
      flag <- FALSE
      break
    }
  }
  
  if (flag) {
    cat(num, " ")
  }
}

cat("\n")


############################################################
# 16. Menu Driven Program (repeat + break)
############################################################

repeat {
  cat("\nMenu\n")
  cat("1. Check Prime\n")
  cat("2. Check Palindrome\n")
  cat("3. Generate Fibonacci\n")
  cat("4. Exit\n")
  
  choice <- as.integer(readline("Enter your choice: "))
  
  if (choice == 1) {
    num <- as.integer(readline("Enter number: "))
    flag <- TRUE
    
    if (num <= 1) flag <- FALSE
    for (i in 2:(num - 1)) {
      if (num %% i == 0) {
        flag <- FALSE
        break
      }
    }
    
    if (flag) cat("Prime number\n") else cat("Not Prime\n")
    
  } else if (choice == 2) {
    num <- as.integer(readline("Enter number: "))
    temp <- num
    rev <- 0
    
    while (temp > 0) {
      digit <- temp %% 10
      rev <- rev * 10 + digit
      temp <- temp %/% 10
    }
    
    if (num == rev) cat("Palindrome\n") else cat("Not Palindrome\n")
    
  } else if (choice == 3) {
    n <- as.integer(readline("Enter number of terms: "))
    a <- 0; b <- 1
    
    for (i in 1:n) {
      cat(a, " ")
      c <- a + b
      a <- b
      b <- c
    }
    cat("\n")
    
  } else if (choice == 4) {
    cat("Exiting program...\n")
    break
  } else {
    cat("Invalid choice\n")
  }
}



#########################
n <- as.integer(readline("Enter a number: "))

for (i in 1:10) {   # Outer loop → rows
  cat("Multiplication of", i, "\n")  
  for (j in 1:10) {               # Inner loop → columns
    cat(i, "x", j, "=", i * j, "\n")
  }
  
}



#########################
n <- as.integer(readline("Enter a number: "))

for (i in 1:10) {   # Outer loop → rows
  cat("Multiplication of", i, "\n")  
  for (j in 1:10) {               # Inner loop → columns
    cat(i, "x", j, "=", i * j, "\n")
  }
  
}

############################################################
# Program to demonstrate a user-defined function in R
############################################################

#function_name <- function(parameters) {
# function body
# statements
#  return(value)   # optional
#}


# Define a function
check_even_odd <- function(num) {
  
  # Check condition
  if (num %% 2 == 0) {
    return("Even number")
  } else {
    return("Odd number")
  }
}

# Take input from the user
n <- as.integer(readline("Enter a number: "))

# Call the function and store the result
result <- check_even_odd(n)

# Display the result
cat(n, "is an", result, "\n")


#########################

filter_high_mpg <- function(data, threshold) {
  data[data$mpg > threshold, ]
}

# Cars with mileage greater than 25
filter_high_mpg(mtcars, 25)


#################3333###################

normalize <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

mtcars$mpg_norm <- normalize(mtcars$mpg)
head(mtcars)








