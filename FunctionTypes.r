# MIMO: multiple input multiple outputs
# when we want to return multiple outputs then we are supposed to store them in a list and then return them
volume_of_cylinder_mimo <- function(dia, len) {
  volume <- (pi * dia ^ 2) * len / 4
  surface_area <- pi * dia * len
  result <- list("volume"=volume, "surface_area"=surface_area)
  return(result)
} 

res <- volume_of_cylinder_mimo(10, 20)
print(res)

# Inline functions: written in 1 line
func <- function(x) x ^ 2 + 4 * x + 4
print(func(2))

# Looping functions: useful when u work on cmd line
# apply: apply function over the margin of an array or matrix
# lapply: apply function over a list or a vector
# tapply: apply function over ragged array
# mapply: multi-variate version of lapply
# xxply (plyr package)

# apply: apply function over the margin of an array(margin: row = 1, col = 2)
# A <- matrix(1:9, 3, 3) # matrix of numbers from 1 to 9 with 3 rows n 3 cols
#       apply(array, margin, function)
# rs <- apply(A, 1, sum) # get sum of each row
# cs <- apply(A, 2, sum) # get sum of each col
# print(rs)
# print(cs)


# lapply: apply function over a list or a vector

A <- matrix(1:9, 3, 3)
B <- matrix(10:18, 3, 3)
myList <- list(A, B) # create a list which stores 2 matrices
#              lapply(list, function)
determinant <- lapply(myList, det)
print(determinant)
# output will be det(A) and det(B)

# mapply: multi-variate version of lapply
# it is a function which can be applied over several lists simultaneously

volume_of_cylinder <- function(dia = 5, len = 100) { # a normal function
  # function definition
  volume <- pi * dia^2 * len / 4
  return(volume)
}
vol1 <- volume_of_cylinder(5, 10)

dia <- list(1, 2, 3, 4)
len <- list(7, 4, 3, 2)
#      mapply(function, list1, list2,.....)
vol <- mapply(volume_of_cylinder, dia, len)
print(vol) # return the answer in the form of a list

# tapply: apply function over ragged array
# tapply is used to apply a function over a subset of vectors given by a combination of factors

id <- c(1, 1, 1, 1, 2, 2, 2, 3, 3)
values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
#             tapply(vector, factor, function)
tapply_res <- tapply(values, id, sum)
print(tapply_res)
# returns the sum of the values whose id is 1 
