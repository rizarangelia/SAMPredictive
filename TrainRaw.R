library(FNN)
for (i in 1:k) {
set.seed(123)
predtrain <- knn.reg(train, test=NULL, y, k=i)
predtrain_ <- as.numeric(predtrain$pred)
predtest <- knn.reg(test, test=NULL, y, k=i)
predtest_ <- as.numeric(predtest$pred)
hasiltrain <-(predtrain_ )*(maxs-mins) + mins
hasiltest <-(predtest_ )*(maxs-mins) + mins
train_ <- data.frame(data$'X4')
MSEtrain <- sum((train_ - hasiltrain)^2)/nrow(train)
RMSEtrain<- sqrt(MSEtrain)

pred_errortrain<-abs(train_-hasiltrain)
pct_errortrain<-abs(sum(pred_errortrain/train_))
MAPEtrain<- (pct_errortrain)/nrow(train_)*100

test_ <- testden
MSEtest <- sum((test_ - hasiltest)^2)/nrow(test)
RMSEtest <- sqrt(MSEtest)

pred_errortest<-abs(test_-hasiltest)
pct_errortest<-abs(sum(pred_errortest/test_))
MAPEtest<- (pct_errortest)/nrow(test_)*100

result[i,1] <- i
result[i,2] <- MSEtrain
result[i,3] <- RMSEtrain
result[i,4] <- MSEtest
result[i,5] <- RMSEtest
trainoutputdata[i,] <- hasiltrain
testoutputdata[i,] <- hasiltest
}
