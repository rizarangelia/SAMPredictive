y <- train$'X4'
input <- data.frame(hasilNormalisasi[2:10])
set.seed(123);
prediksiakhir <- knn.reg(input, test=NULL, y, k=3)
prediksiakhir_ <- as.numeric(prediksiakhir$pred)
FORECAST <-  (prediksiakhir_)*(maxs-mins) + mins
FORECAST_ <- data.frame(FORECAST)

pred_errorfore<-abs(train_-FORECAST_)
pct_errorfore<-abs(sum(pred_errorfore/train_))
MAPEforecast<- (pct_errorfore)/nrow(train_)*100
