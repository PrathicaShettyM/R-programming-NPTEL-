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

# 3. Dataframes: are the generic data objects used to store tabular data
# create a dataframe by providing data
vect1 = c(1,2,3)
vect2 = c(" R", " Scilab", " Java")
vect3 = c("  For prototyping", "  For prototyping", "  For scaleup")
df = data.frame(vect1, vect2, vect3)
print(df)
print(" ")

# editing the dataframes - 1
df[[2]][2] = "Matplotlib"
df[[3]][2] = "visualisation"
print(df)
print(" ")

# editing the dataframes
# using edit command
# 1st create an instance of the dataframe and use edit() to open a table editor where u can enter value
# myTable = data.frame()
# myTable = edit(myTable)
# print(myTable)
# print(" ")

# adding extra rows and cols
# extra row - rbind, extra col = cbind
df = rbind(df, data.frame(vect1=4, vect2="C", vect3="for scaleup"))
print("Added extra row")
print(df)
print(" ")

df = cbind(df, vect4=c(10,20,30,40))
print("adding extra col")
print(df)
print(" ")


# create a dataframe by from the data existing in a file(.txt etc)
#   newDF = read.table(path="path/of/the/file") (slashes can "/" or "\") based on the type of os

#   A separator can also be used to distinguish between the entries
#   newDF = read.table(file="path/of/the/file", sep)

# accessing rows and columns
# accesssing first and second row df[row, col] it can be number or string
# row col can be "1:2" array or c(1,3) vectors

# access 1st and 2nd rows
print(df[1:2,])
print(" ")
# accessing first and second col
print(df[,1:2])
print(" ")
# alternate for accessing 1st and 2nd col
print(df[1:2])
print(" ")

#Subsets(): extracts the subset of data based on conditions
pd = data.frame("Name"=c("Senthil", "Senthil", "Sam", "Sam"), "Month"=c("Jan", "Feb", "Jan", "Feb"), "BS"=c(141.2, 139.3, 135.2, 160.1), "BP"=c(90, 78, 80, 81)) # nolint # nolint
pd2 = subset(pd, Name=="Senthil" | BS>150)
print("New subset pd2: ")
print(pd2)
print(" ")

# Delete cols and rows
# df2 = df[-3,-1] # delete 3rd row and 1st col
# print(df2)

# conditional deletion
# delete a col called vec3
df3 = df[,!names(df) %in%c ("vect3")]
print(df3)
print(" ")

# delete a row whose entry in 1st col starts from '3'
df4 = df[!df$vect1==3,]
print(df4)
print(" ")

# Manipulating rows - the factor issue
# when character columns are created in data.frame, they become factors
# factor varaibles are those where the character column is split into categories or factor levels

# df[3,1] = 3.1
# df[3,3] = "others"
# print(df)  -> gives warning of factor issue

# to solve the above factor issue
# while declaring the data.frame itself give extra arguement stringsAsFactors = F(because by default it is true)
# df = data.frame(vect1, vect2, vect3, stringsAsFactors = F)

