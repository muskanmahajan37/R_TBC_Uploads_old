#Ex13.18, Page 575

s<-c(20,20,20,20,20,20,20,20,20,60,60,60,60,60,60,60,60,60,100,100,100,100,100,100,100,100,100)
l_1000s<-c(3,3,3,6,6,6,10,10,10,3,3,3,6,6,6,10,10,10,3,3,3,6,6,6,10,10,10)
w<-c(300.2,310.8,333.0,99.6,136.2,142.4,20.2,28.2,102.7,67.3,77.9,93.9,43.0,44.5,65.9,10.7,34.1,39.1,26.5,22.3,34.8,32.8,25.6,32.7,2.3,4.4,5.8)

si<-log(s,base=exp(1))
li<-log(l_1000s,base=exp(1))
wi<-log(w,base=exp(1))

#To display estimated coefficients and t ratios
df1<-data.frame(si,li,wi)
model<-lm(wi~(si+li),data=df1)
print(summary(model))