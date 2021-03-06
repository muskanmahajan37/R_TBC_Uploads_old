# Example : 3   Chapter : 4.3     Page No: 224
# Fit a Parabola
solution<-function(A,b){
  ATA<-t(A)%*%A
  ATb<-t(A)%*%b
  xhat<-solve(ATA,ATb)
  return(xhat)
}
fit_parabola<-function(D){
  num_of_points<-nrow(D)
  t<-c()
  for(i in 1:num_of_points){
    t<-c(t,1)
  }
  t<-c(t,D[,1])
  t<-c(t,D[,1]*D[,1])
  A<-matrix(c(t),ncol=3)
  b<-D[,2]
  b<-matrix(c(b),ncol=1)
  x<-solution(A,b)# The system has no solution, we need to find the best solution 
  return(x)
}
Data<-matrix(c(0,1,2,6,0,0),ncol=2)
x<-fit_parabola(Data)
C<-x[1]
D<-x[2]
E<-x[3]
print(paste("The best Parabola that fitt in is b= ",C,"+",D,"t+",E,"t2"))

