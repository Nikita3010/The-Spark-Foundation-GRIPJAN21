## Data Science & Business Analytics Internship at The Spark Foundation ##
#TASK(1):- Exploratory Data Anlysis-Retail
#Aim:-As a business manager, try to find out the weak areas where you can
#     work to make more profit.
#     What all business problems you can derive by exploring the data?
#Steps to Follow
# 1)Importing the data sets
# 2)Visualize the data sets
# 3)Draw Conclusion
###################################################################################
#TASK 4:-R Code
Dt=read.csv("C:\\Users\\Lenovo\\Desktop\\SampleSuperstore.csv");Dt
attach(Dt)
head(Dt)
#Data Visualization
install.packages("ggplot2")
library(ggplot2)
install.packages("corrgram")
library(corrgram)
install.packages("corrplot")
library(corrplot)
##################################################################################
# Column Chart
p=ggplot(Dt,aes(Segment,Sales))
p+geom_col(fill="blue")+ggtitle("Segmentwise Sales")
##We have to work on Home Office segment this is weak area in the segment sales.

k=ggplot(Dt,aes(Category,Sales))
k+geom_col(fill="yellow")+ggtitle("categorywise Sales")
##office supplies is weak area in category sales.

j=ggplot(Dt,aes(Segment,Profit))
j+geom_col(fill="red")+ggtitle("Segmentwise Profit")
l=ggplot(Dt,aes(Category,Profit))
l+geom_col(fill="Green")+ggtitle("categorywise Sales")
#####################################################################################
# point chart
p1=ggplot(Dt,aes(Sales,Profit))
p1+geom_point(aes(color=Country))+ggtitle("Countrywise Sales & Profit Relation")
k2=ggplot(Dt,aes(Quantity,Profit))
k2+geom_point(aes(color=Country))+ggtitle("Countrywise Quantity & Profit Relation")
##################################################################################
# bar chart
p2=ggplot(Dt,aes(Ship.Mode))
p2+geom_bar(fill="green")+ggtitle("Ship Mode Proportion")
##Same Day ship mode proportion count is less as compare to other mode we have to 
work on it.
#correlation plot
col=sapply(Dt,is.numeric)
cor.data=cor(Dt[,col])
corrplot(cor.data,method="square",type="upper")
corrplot(cor.data,method="number",type="upper")
##From this correlation matrix the relationship between sales and profit is 0.48 
# & discount & profit are negatively correlated with coeffient -0.22.
#Box plot
p3=ggplot(Dt,aes(x=Region,y=Discount,color=Region))+geom_boxplot()+ggtitle("Regiowise Discount")
p3
#Violin plot
p3+geom_violin()
#################################################################################

