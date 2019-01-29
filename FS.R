library(lars); library(lasso2); library(glmnet)

#Prostate data
data("Prostate")
#standardized predictors
std_Pro <- scale(Prostate[,-9])
std_Pro <- cbind(std_Pro, Prostate$lpsa)

object <- lars(std_Pro[,-9], std_Pro[,9])
plot(object)
object2 <- lars(std_Pro[,-9], std_Pro[,9]), type="lar")
plot(object2)
object3 <- lars(std_Pro[,-9], std_Pro[,9], type="for",eps=0.01)
plot(object3)



fit = glmnet(cbind(lcavol, lweight, age,lbph, svi, lcp, gleason,pgg45), lpsa)
plot(fit)+ylim(-0.5,1)

pairs(Prostate, col = 1+svi, pch = gleason - 5,
      main = paste("Prostate data, n = ", nrow(Prostate)))
detach()

l1c.P <- l1ce(lcavol ~ ., data = Prostate)
coef(l1c.P)[coef(l1c.P) != 0] ## only age, lcp, lpsa (+ intercept)
summary(l1c.P)



data(diabetes)
attach(diabetes)
cv.lars(x2,y,trace=TRUE,max.steps=80)
detach(diabetes)

data(diabetes)
par(mfrow=c(2,2))
attach(diabetes)
object <- lars(x,y)
plot(object)
object2 <- lars(x,y,type="lar")
plot(object2)
object3 <- lars(x,y,type="for",eps=0.01) # Can use abbreviations
plot(object3)
detach(diabetes)