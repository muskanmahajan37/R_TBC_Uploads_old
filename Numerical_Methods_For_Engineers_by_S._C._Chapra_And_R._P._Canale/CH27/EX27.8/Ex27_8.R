a<-matrix(c(3.556, -1.668, 0, -1.778, 3.556, -1.778, 0, -1.778, 3.556),nrow = 3,ncol = 3,byrow = TRUE)
b<-matrix(c(1.778,0,1.778),nrow = 3,ncol = 1,byrow = TRUE)
ea=100
count=1
eigen<-matrix(0,100)
ai=solve(a)
while (ea>4){
  maxim=b[1]
  for (i in 2:3){
    if (abs(b[i])>abs(maxim)){
      maxim=b[i]
    }
  }
  eigen[count]=maxim
  b=ai%*%(b/maxim)
  if (count==1){
    ea=20
    count=count+1
  } else {
    ea=abs(eigen[count]-eigen[count-1])*100/abs(eigen[count])
    count=count+1
  }
}
cat("The smallest eigen value",(1/eigen[count-1])^0.5)