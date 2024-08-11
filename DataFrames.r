# more on dataframes
# Recasting is the process of manipulating a dataframe in terms of its variables
# done using 2 steps: 
# Step1: melt
# Step2: cast

library(reshape2)
pd = data.frame("Name"=c("Senthil", "Senthil", "Sam", "Sam"), "Month"=c("Jan", "Feb", "Jan", "Feb"), "BS"=c(141.2, 139.3, 135.2, 160.1), "BP"=c(90, 78, 80, 81))
print(pd)
print(" ")

# Step 1: Melt
# in melt we convert 2 col to 1 col 
df = melt(pd, id.vars = c("Name", "Month"), measure.vars = c("BS", "BP"))
print(df)
print(" ")
# original table
#      Name Month    BS BP
# 1 Senthil   Jan 141.2 90
# 2 Senthil   Feb 139.3 78
# 3     Sam   Jan 135.2 80
# 4     Sam   Feb 160.1 81

# to recast we need to following 
# 1. Identifier: discrete type varaible(name, month)
# 2. Measurements: numeric variable(BS, BP)
# Note: categorical and date varaibles cannot be measurements

# Step 2: Cast
# in cast we convert one col to its variable vals, so basically we change the table in such a way tht we can extract useful features from the existing set of resources
# dcast(data, formula, value.var=col, with values)
df2 = dcast(df, variable+Month~Name, value.var="value")
print(df2)
print(" ")
# new table after recasting
#   variable Month   Sam Senthil
# 1       BS   Feb 160.1   139.3
# 2       BS   Jan 135.2   141.2
# 3       BP   Feb  81.0    78.0
# 4       BP   Jan  80.0    90.0
# variable+month~Name: cols "variable" and "month" remains as it is
# categories in column "Name" become new variables

# value.var="value": column of df from which the values are taken from

# Recaste : cast+melt
# to do this in a single step
# recast(data, formula, ..., id.var, measure.var)
recast(pd, variable+Month~Name, d.var=c("Name", "Month"))


# Add a new variable to the dataframe based on existing ones
# call the library 'dplyr' command using the library()
# mutate() command will add extra "variable columns"(means a new calculated col) based on the existing ones

library(dplyr)
pd2 <- mutate(pd, log_BP = log(BP))
print(pd2)
print(" ")
# combining 2 dataframes - (dpylr)
# syntax: function(df1, df2, by = id.var)
# this varaible provides identifier for combining the 2 dataframes
# the nature of combination depends on the function to be used

# built in functions for joining or combining dataframes
# left_join()   full_join()
# right_join()  semi_join()
# inner_join()  anti_join()

print("Joining 2 dataframes")
print(pd)
print("_________________________________________________________________________________")
pd_new = data.frame("Name"=c("Senthil", "Ramesh", "Sam"), "Department"=c("PSE","Data Analytics", "PSE"))
print(pd_new)

# left join
# joins the matching rows of dataframe2 to dataframe1 based on the "id.variable"
# join 2 to 1(right to left)
pd_left_join_ans <- left_join(pd, pd_new, by="Name")
print(pd_left_join_ans)
print("_________________________________________________________________________________")

# right join
# joins the matching rows of dataframe1 to dataframe2 based on the id.variable
# join 1 to 2(left to right)
pd_right_join_ans <- right_join(pd, pd_new, by="Name")
print(pd_right_join_ans)
print("_________________________________________________________________________________")

# inner_join()
# merges and retains those rows with IDs present in both dataframes
# if id(here "Name") in both dataframes same, then table is joined
pd_inner_join_ans <- inner_join(pd_new, pd, by="Name")
print(pd_inner_join_ans)
print("_________________________________________________________________________________")