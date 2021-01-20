## Data Science & Business Analytics Internship at The Spark Foundation ##
#TASK(3):- Prediction Using Decision tree Algoritm
#Aim:-To Predict the right class according to input given.
#Steps to Follow
# 1)Importing the data sets
# 2)Partitioning the data
# 3)Install Package Required
# 4)Builde the decision tree
# 5)Visualising the Model
Dt=iris;Dt
View(Dt)
summary(Dt)
#For data partition
set.seed(555)
inde=sample(2,nrow(Dt),replace=TRUE,prob=c(0.8,0.2))
train=Dt[inde==1,]
test=Dt[inde==2,]
#Model Building
library(party)
library(rpart)
library(rpart.plot)
tree=rpart(Species~.,train)
rpart.plot(tree)
