#Learn R by doing examples. Part I - Load a data set in R and analyze it using plots and tables
#Zaid Haddad

#Packages
#load tidyverse library which contains ggplot and other libraries
#If tidyverse or ggplot is not installed, please un-comment the following line and run only once then proceed to loading the library
#install.packages("tidyverse")
library(tidyverse)

#load the titanic training data set in R
data.titanic <- read.csv('titanic/train.csv', stringsAsFactors = FALSE)



#Tabluate Data
table(Gender=data.titanic$Sex, Survived=data.titanic$Survived)
# Survived
# Gender   0   1
# female  81  233
# male    468 109


ggplot(data=data.titanic,aes(x=Sex,fill=Survived))+geom_bar()

col.interest <- c("Survived","Sex")
for (i in col.interest){
  data.titanic[,i] <- as.factor(data.titanic[,i])
}
ggplot(data=data.titanic,aes(x=Sex,fill=Survived))+geom_bar()

#OR using as.factor in ggplot directly
ggplot(data=data.titanic,aes(x=Sex,fill=as.factor(Survived)))+geom_bar()


