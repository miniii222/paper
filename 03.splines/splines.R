heart <-read.table("http://statweb.stanford.edu/~tibs/ElemStatLearn/datasets/SAheart.data", sep=",",head=T,row.names=1)
head(heart)

#https://datascienceplus.com/cubic-and-smoothing-splines-in-r/

###
#loading the Splines Packages
require(splines2);require(ISLR);library(splines)

attach(Wage) #attaching Wage dataset
?Wage #for more details on the dataset
agelims<-range(age)
#Generating Test Data
age.grid<-seq(from=agelims[1], to = agelims[2])

#3 cutpoints at ages 25 ,40 ,60
fit<-lm(wage ~ bs(age,knots = c(25,40,60)),data = Wage )
summary(fit)

#Plotting the Regression Line to the scatterplot   
plot(age,wage,col="grey",xlab="Age",ylab="Wages")
points(age.grid,predict(fit,newdata = list(age=age.grid)),col="blue",lwd=2,type="l")
#adding cutpoints
abline(v=c(25,40,60),lty=2,col="darkgreen")

#fitting smoothing splines using smooth.spline(X,Y,df=...)
fit1<-smooth.spline(age,wage,df=16) #16 degrees of freedom
#Plotting both cubic and Smoothing Splines 
plot(age,wage,col="grey",xlab="Age",ylab="Wages")
points(age.grid,predict(fit,newdata = list(age=age.grid)),col="darkgreen",lwd=2,type="l")
#adding cutpoints
abline(v=c(25,40,60),lty=2,col="darkgreen")
lines(fit1,col="red",lwd=2)
legend("topright",c("Smoothing Spline with 16 df","Cubic Spline"),col=c("red","darkgreen"),lwd=2)

fit2<-smooth.spline(age,wage,cv = TRUE)
fit2

#It selects $\lambda=0.0279$ and df = 6.794596 as it is a Heuristic and can take various values for how rough the #function is
plot(age,wage,col="grey")
#Plotting Regression Line
lines(fit2,lwd=2,col="red")

