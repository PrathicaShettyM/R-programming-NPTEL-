# intro to r
a <- 14
b <- a * 11
print(c(a, b))


# clear the console using ctrl+l

# clear the environment rm()
# 1. to clear single varaible: rm(variable)
# 2. all variables: rm(list=ls())

# to save varaibles
# 1. to save 1 varaible: save(a, file="sess1.Rdata")
# 2. save(list=ls(all.names=TRUE), file="sess1.Rdata")
# 3. save.image() #shortcut for the above cmd
# 4. load(file="sess1.Rdata")

# Naming variables
# 1. Allowed characters are alphanumeric, '_' and ','
# 2. Always start with alphabets
# 3. no special characters like !,@,#,$..

b2 <- 7
prathica_rvce <- "cyber security"
prathica.rvce <- "CSE - cyber security"
print(b2)
print(prathica.rvce)
print(prathica_rvce)

# Basic datatypes
# 1. logical: true/false
# 2. integer: set of all integers
# 3. numeric: set of all real numbers
# 4. complex: set of complex numbers
# 5. characters: "a","b".."@"..

# some built in functions
# typeof(object)
# verify if the object is of certain type
# is.Integer()
# coerce or convert the data type of object to another
# as.logical()

# basic objects
# 1. Vector: ordered collection of same datatype
# 2. List: ordered collection of objects
# 3. Dataframe: Generic tabular object
