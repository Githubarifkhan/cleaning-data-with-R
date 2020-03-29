############### Introduction and Exploring Raw Data ##############

# ------------- Messy data

pokemon <- read.csv("F:\\eckovation.R\\pokRdex-comma.csv")
pokemon

####View in the head of data ##########
head(pokemon)

####View in the tail of data ##########
tail(pokemon)

####View a compact summary of the structur of data ##########
str(pokemon)           # structure fuction can be called on any  object.

dim(pokemon)
names(pokemon)
str(pokemon)

###### to obtain all the categories or lavels of categories variable  use the levels() function

levels(pokemon$type_1)
table(pokemon$type_1)
library(dplyr)
summary(pokemon)
library(skimr)
skim(pokemon)

library(DataExplorer)
DataExplorer::create_report(pokemon)
