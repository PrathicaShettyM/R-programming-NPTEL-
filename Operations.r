# Arithmetic operations in R
print("arithmetic operations")
a = 10
b <- 20
print(a+b)
print(a-b)
print(a*b)
print(b/a)
print(a**2)
print(102%%a)
print(20%/%10)

# bodmas o -> exponent
a = 7-2*(27/3**2) + 4
print(a)

# Logical operations in R
print("logical operations")
print(2>3)
print(2<3)
print(2==3)
print(3>2)
print(3>=2)
print(3!=2)
print(!2)
# print(5|3)
# print(5&3)
# print(isTRUE)

# MATRIX OPERATIONS
A = matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3, byrow=TRUE)
print(A) 
print(" ")
# creating speacial matrices
# 1. scalar matrix
print("Scalar matrix")
B = matrix(3,3,4) # matrix(element here 3, rows, cols)
print(B)
print(" ")
# 2. diagonal matrix
C = diag(c(4,5,6), 3,3) # diag(vector, rows, cols)
print(C)
print(" ")
# 3. identity matrix
D = diag(1,3,3) # diag(1, rows, cols)
print(D)
print(" ")

# assignment 1
E = matrix(c(3,5,-2,0), nrow = 2, ncol = 2, byrow = TRUE)
print(E)

F = matrix(c(1,10,3,-1,7,5), nrow = 3, ncol = 2, byrow = TRUE)
print(F)

G = matrix(c(2,3,4,0,1,2,-1,-2,-3,5,4,3), nrow = 4, ncol = 3, byrow = TRUE)
print(G)

# Matrix metrics
print(dim(G)) # m*n dimensions

print(nrow(G)) # no. of rows 
print(ncol(G)) # no. of cols

print(length(G)) # no. of elements of matrix
print(prod(dim(G))) # no. of elements of matrix

# accessing, editing, deleting elements in matrices
# array/value      before"," -> rows    after"," -> cols
# use "-" for removing rows/cols rownames(), colnames()
colnames(A) <- c("a", "b", "c")
rownames(A) <- c("d", "e", "f")
print(A)

print("print 2 cols [row, col]")
print(A[,1:2])

print("print 2 cols with ids a,c")
print(A[,c("a","c")])

print(" print 2 rows with ids d,f")
print(A[c("d","f"),])

# accessing an entry of a matrix
print(A)
print(A[2,3]) # [row, col]
print(A[1,2])

# accessing a col and row
print(A[,1]) # access 1st col
print(A[2,]) # access 2nd row
print('access last row')
print(A[nrow(A), ]) # yes works

# accessing all entries except the entries of col2
print(A[,-2])

# accessing all entries except the entries of row1
print(A[-1,])

# assignment 2
A1 = matrix(c(1,7,3,4,4,6,4,7,12), nrow = 3, ncol = 3, byrow = TRUE)
A1[3,3] = 13 # access element 12 and update its value
print(A1)
print(A1[2,]) # access 2nd row
print(A1[,3]) # access 3rd col
print(A1[,2]) # access 2nd col
print(A1[3,]) # access 3rd row

print(1:10) # print 1 to 10 in a row
print(10:1) # print 10 to 1 in a row

# submatrix selection using the above above conventions
print(A1[1:3, 1:2]) # 1st 3 rows, 1st 2 cols
print(A1[1:3, -3]) # 1st 3 rows, all cols except 3rd col
print(A1[,1:2]) # all rows, 1st 2 cols

# access the submatrices and convert it into new matrix
print(A)
A[c(1,3), 1:2] # rows: 1st and 3rd, col: 1 to 2
print(A[c(1,3), c(1,2)]) # concat the above to create new matrix

# assignment 3
print(A)
print(A[c(1,2), c(1,3)])

# matrix concetnation
print(A)
B1 = matrix(c(10, 20, 30), nrow = 1, ncol = 3) # row matrix
B2 = matrix(c(12 , 24, 36), nrow = 3, ncol = 1) # col matrix
print(B1)
print(B2)

# rowbind and colbind
ans1 = rbind(A, B1)
ans2 = cbind(A, B2)
print(ans1)
print(ans2)

# note: check the dimension before concatinating becoz it might throw if dimensions are wrong

# delete a row
A = A[-2, ]
print(A) # 2nd row is deleted

# delete a col
A = A[,-2]
print(A) # 2nd col is deleted

# addition ,subtraction, multiplication division on matrices
A = matrix(c(1,2,3,4,5,6,8,9,1), nrow = 3, ncol = 3,, byrow = TRUE)
B = matrix(c(3,1,3,4,2,1,5,1,2), nrow = 3, ncol = 3, byrow = TRUE)

print("Addition: ")
print(A+B)

print("Subtraction: ")
print(A-B)

print("Element wise Multiplication: ")
print(A*B)

print("Regular matrix multiplication: ")
print(A%*%B)

print("Element wise division: ")
print(A/B)