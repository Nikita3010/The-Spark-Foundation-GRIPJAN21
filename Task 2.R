## Data Science & Business Analytics Internship at The Spark Foundation ##
#TASK(2):- Prediction Using Unsupervised Machine Learning
#Aim:-To Predict the Optimum number of clusters from the iris datasets and
#     represent it visually.
#Steps to Follow
# 1)Importing the data sets
# 2)Install Package Required
# 3)Finding the Optimum no of cluster
# 4)Applying K-Means clustering on data
# 5)Visualising the clusters
###################################################################################
#TASK 2:-R Code
Data1=iris;Data1
class(Data1)
attach(Data1)
head(iris)
plot(Data1)
Data2=as.data.frame(scale(Data1[,1:4]))
View(Data2)
sapply(Data2,mean)
sapply(Data2,sd)
library(NbClust)
install.packages("cluster")
library(cluster)
install.packages("rattle")
library(rattle)
wssplot <- function(Data2, nc=15, seed=1234){
  wss <- (nrow(Data2)-1)*sum(apply(Data2,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(Data2, centers=i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares")
  wss
}
wssplot(Data2)
Result=kmeans(Data2,3);Result
#By Cluster Center
Result$centers
Result$size
table(Data1$Species,Result$cluster)
plot(Data1[c("Petal.Length","Petal.Width")],col=Result$cluster)
plot(Data1[c("Sepal.Length","Sepal.Width")],col=Result$cluster)

