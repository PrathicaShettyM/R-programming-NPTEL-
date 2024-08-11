# control structures:
# 1. conditionals(if-else) 2. loops(for, while)

# conditionals
x <- 6
if (x > 7) {
  x <- x + 1
} else if (x > 8) {
  x <- x + 2
} else {
  x <- x + 3
}
print(x)

# sequence function: component of for loop
# seq(from, to , by = increment or decrement, length = no. of elements required)
s <- seq(from=1,to=10,by=3)
print(s)

s <- seq(from=1,to=10,length=4) #creates equi space sequence from 1 to 10
print(s)

s <- seq(from=1,to=10,by=4)
print(s)

# for loop: print sum of elements from 1 to 5
n <- 5
sum <- 0
for (i in seq(1,n,1)) {
  sum <- sum + i
  print(c(i, sum))
}

# break statement: break the sequence in the loop
n <- 100
sum <- 0
for (i in seq(1,n,1)) {
  sum <- sum + i
  print(c(i, sum))
  if (sum > 15) {
    break
  }
}

# while loop
i <- 0
sum <- 0
final_sum <- 15
while (sum < final_sum) {
  sum <- sum + i
  print(c(i, sum))
  i <- i + 1
}