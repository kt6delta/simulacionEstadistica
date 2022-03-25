X=c(2,3,3,4,6,4,3,2,5,5,6,6,2,4,5,6,7,8,9,9)
a=length(X)
ag=a
bg=140 #primer 
b=140 #segundo bootstrap
bsg2=rep(0,bg)
bsg=rep(0,ag)
bs=rep(0,b)
for(k in 1:bg){
  for(j in 1:ag){
    for(i in 1:b){
      bs[i]=mean(quantile(sample(X,a,replace=TRUE),0.385))
    }
    bs
    bsg[j]=mean(bs)
  }
  bsg
  bsg2[k]=mean(bsg)
}
B=bsg2
estimacion=mean(B)
error=2*sqrt(var(B)/length(B))
liminf=estimacion-error
limsup=estimacion+error
hist(B)
cbind(estimacion, error, liminf, limsup)

