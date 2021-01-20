## Data Science & Business Analytics Internship at The Spark Foundation ##
#TASK(1):- Prediction Using Supervised Machine Learning
#Aim:-To Predict the Percentage of Student Based on the number of study hours using 
#     the Simple linear regression. 
#Steps to Follow
# 1)Importing the data sets
# 2)Visualize the data sets
# 3)Data partition
# 4)Training the Algorithm
# 5)Visualise the Model
# 6)Making Prediction 
# 7)Evaluating the Model
###################################################################################
#TASK 1:-R Code
Data=read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv");Data
attach(Data)
head(Data)
summary(Data)
x=Data$Hours
y=Data$Scores
plot(x~y)
abline(lm(x~y))
Model=lm(y~x)
summary(Model)
plot(Model)
predict(Model,Data)
object=data.frame(x=9.25)
Result=predict(Model,object);Result



