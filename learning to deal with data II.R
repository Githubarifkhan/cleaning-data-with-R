#A data sample is called qualitative also known as categorical,
#if its values belong to a collection of known defined non-overlapping classes.
#common ex. include student letter grade(A ,B,C, D, E and F)
#commercial bond rating (AAA,AAB........)and consumer clothing shoe sizes(1,2,3........).

iris
x=5
irisdata =iris
firstcolumn= irisdata$Sepal.Length
summary(firstcolumn)
boxplot(firstcolumn)
hist(firstcolumn)

#Data is loaded
iris
dim(irisdata)

#variable names or colum  names
names(irisdata)

#structure (How your data looks like)
str(iris)

#Attributes
iris[1:15,]
iris[50:59,]
iris[149:150,]
iris[,4]
iris[,5]
iris[1:3]

#Get sepal.length of the first 10 rows
iris[1:10, "Sepal.Length"]
iris[1:10 ,3]
iris[1:10, iris$Petal.Width]
#the same as above

iris$Sepal.Length[1:10]

#distribution of every variable
summary(iris)

#frequency
table(iris$Species)

#pie chart
pie(table(iris$Species))

#variance of Sepal.Length
var(iris$Sepal.Length)

#covariance of two variables
cov(iris$Sepal.Length,iris$Petal.Length)

#correlation of two variables
cor(iris$Sepal.Length, iris$Petal.Length)


#hist
hist(iris$Sepal.Length)

#density
plot(density(iris$Sepal.Length))

#scatter plot
plot(iris$Sepal.Length, iris$Sepal.Length)

#pair plot
plot(iris)
pairs(iris)
pairs(iris[1:4], pch=21, bg=c("red","green3","blue")[unclass(iris$Species)])

