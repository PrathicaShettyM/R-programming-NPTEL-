# functions: piece of code which can be invoked any no. of times to do the some task

volume_of_cylinder <- function(dia = 5, len = 100) {
  # function definition
  volume <- pi * dia^2 * len / 4
  return(volume)
}
vol1 <- volume_of_cylinder(5, 10)
vol2 <- volume_of_cylinder()
print(vol1)
print(vol2)
# lazy execution means: if u have more parameters, and while calling the function u dont pass all the arguemenets,
#                       still the function gets executed as long as tht parameter is not used in the function definition
# volume_of_cylinder <- function(dia = 5, len = 100, radian) {
#   # function definition
#   volume <- pi * dia^2 * len / 4
#   return(volume)
# }
# vol1 <- volume_of_cylinder(5, 10) # not passing the radian value but still function gets executed becoz in function definition it is not used

# in case u pass parameters like this u will get error

# volume_of_cylinder <- function(radian, dia, len) {
#   # function definition
#   volume <- pi * dia^2 * len / 4
#   return(volume)
# }
# vol1 <- volume_of_cylinder(dia=5, len=10)
