titanic <-read.csv("titanic.csv")

################Testing for NA and NAN using is.na and is.nan#################
#replacing the na or nan with mean or meadian.
#removing rows with na or nan in age from the dataset.
#Removing rows with na or nan in every columns from the dataset.
#na.omit



#A quick glance at the first 6 rows of the dataset.

head(titanic)

head(titanic, 16)

#seems that every thing is alright .However if we try to calculate

mean(titanic$Age)

#looking at the first 100 entries of the age variable , you can see that there are 
#lot of the NAS inside that column . this results in the NA output when we try to calculate

titanic$Age[1:100]

############Dealing with NAs########################

#Testing for NA and NAS using is.na and is.nan. This is a basic function to test. 
#NA or NAN is.na can be used for nas and nans. however is.nan can only be used for
vect <-c(1,2,3, NA, NaN)
is.na(vect)
is.nan(vect)

#replacing the na or nan with mean or meadian.

#first we calculate the mean of the available data in Age
age.mean <-mean(titanic$Age, na.rm = TRUE)
age.mean
titanic$Age[is.na(titanic$Age)] <-age.mean
age.mean
mean(titanic$Age)
titanic$Age

#we have succefully replaced all NAN by 29.69912.
#As a result , the output of mean (titanic$Age)is no longer NA.


##################################removing rows with NA or NAN in Age###########

remna <- read.csv("titanic.csv", header=TRUE)


NROW(remna)
is.na(remna$Age)
remnatest <-remna[!is.na(remna$Age),]
NROW(remnatest)

#Removing rows with na OR NAN in every column  from the dataet here we use another
#function complete.cases which returns TRUE if there are no NA at all in the entire
?complete.cases
remnan <-read.csv("titanic.csv", header = TRUE)
remnan <- remnan[complete.cases(remnan),]
remnan

NROW(remnan)
is.na(remnan)

#Another way of removing na values

#na.omit  this function returns a data frame with the rows containing NA  in any column
omitvalue <-read.csv("titanic.csv", header=TRUE)
omitvalue
omitvalue <-na.omit(omitvalue)
omitvalue
NROW(omitvalue)
