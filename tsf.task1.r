#Grip Task 1 Prediction using supervised ml with R
#Aditi Patil 
#importing data
data=read.csv("C://Users//91878//Documents//Book1data.csv",header = TRUE)
data
#summary of data
summary(data)
x=data$Hours
y=data$Scores
#fitting model
model=lm(y~x)
model
#plotting the model
plot(x,y,main="Hours vs Scores",xlab="Hours studied",ylab="score",col="red")
abline(model,col="blue")
#comparing actual and predicted scores
actual=y
hour=data.frame(x)
predicted=predict(model,hour)
cbind(actual,predicted)
#predicted score if student studied for 9.25hrs/day
test=data.frame(x=9.25)
predict(model,test)
#number of hours=9.25 and score=92.90985 
