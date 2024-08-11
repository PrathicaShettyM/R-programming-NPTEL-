# Scatter plot
X <- 1:10
Y <- X ^ 2
plot(Y)

# scatter plot using an example dataset in R
plot(mtcars$wt, mtcars$mpg, main="Scatter plot example", xlab="Car weight", ylab="Miles per Gallon", pch=19)
# mtcars$wt, mtcars$mpg : values for which we are plotting(x,y)
# main : title of the plot
# xlab: label for x-axis
# ylab: label fro y-axis
# pch: type of points used for the plot

# Line plot
x = 1:10
y = x^2
plot(x,y,type='l')

# Bar plot
# barplot(H, names.arg, xlab, ylab, main, names.arg, col)

H <- c(7, 12, 28, 3, 41)
M <- c("Mar", "Apr", "May", "Jun", "Jul")
barplot(H, names.arg=M, xlab="Month", ylab="Revenue", col="blue", main="Revenue Chart", border="red")

# sophisticated graphs
par(mfrow=c(2,4))
days <- c("Thr, Fri", "Sat", "Sun")
sexes <- unique(tips$sex)
for (i in 1:length(sexes)) {
  for (j in 1:length(days)) {
    currdata <- tips[tips$day==days[j]&tip$sex==sexes[i],]
    plot(currdata$total_bill, currdata$tip/currdata$total_bill, main=paste(days[j], sexes[i], sep=", "), ylim=c(0,0.7), las=1)
  }
}