library(zoo)
data <- zoo (data)
data <- data.frame(na.approx(data))
maxs <- max(data)
mins <- min(data)
hasilNormalisasi = (data-mins)/(maxs-mins)
train <- data.frame(hasilNormalisasi[1:9])
test <- data.frame(hasilNormalisasi[10])
trainden <- data[1:9]
testden <- data[10]
y <- train$'X4'
k=10
result<-array(vector(mode = 'numeric'), c(k, 5))
trainoutputdata<-array(vector(mode = 'numeric'), c(k, nrow(train)))
testoutputdata<-array(vector(mode = 'numeric'), c(k, nrow(test)))
dimnames(result)[[2]]<-c("nilai k", "MSEtrain","RMSEtrain", "MSEtest", "RMSEtest")
