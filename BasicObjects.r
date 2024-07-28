# BASIC OBJECTS
# 1. Vector: ordered collection of same datatype
# ex: create a vector of float datatype and display
X <- c(2.3, 4.3, 5.6, 9.8)
print(X)

# 2. List: generic object consisting of an ordered collection of objects
# it consists of a numeric vector, a logical value, a matrix,
# a complex vector, a character array, a function etc
# ex: create multiple lists and display them
ID <- c(1, 2, 3, 4)
emp.name <- c("Man", "Rag", "Sha", "Din")
num.emp <- 4
# create list of list
emp.list <- list(ID, emp.name, num.emp)
print(emp.list)

# create a list of list and give headings to them
emp.list <- list("id" = ID, "Names" = emp.name, "total staff" = num.emp)
# print only the "Names" column
print(emp.list$Names)

# accessing the individual lists from the lists of lists
print(emp.list[[1]]) # displays ID list
print(emp.list[[2]]) # displays Names list
# for accessing individual elements of the list
print(emp.list[[2]][4])
print(emp.list[[1]][2])

# updation in a list: yes it is possible
emp.list['total staff'] = 5
emp.list[[1]][5] = 5
emp.list[[2]][5] = "Nir"
print(emp.list)

# concatinating the 2 lists
emp.ages = list("ages" = c(23,45,34,29,50))
emp.list = c(emp.list, emp.ages)
print(emp.list)