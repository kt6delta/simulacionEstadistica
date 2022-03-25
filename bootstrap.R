boots1=function(x,a,b){
  bs=rep(0,b)
  for(i in 1:b)
    bs[i]=mean(sample(x,a,replace=T))
  bs
}

muestra=c(1,0,1,1,1,1,1,0,0,0,0,1,1,1,0,0,0,1,1,0,1,1,1,0,1,1,1,0,0,1)
B=boots1(muestra,length(muestra),900000)
estimacion=mean(B)
errorE= sqrt(var(B)/length(B))
error=2*errorE
liminf=estimacion-error
limsup=estimacion+error
cbind(estimacion ,error, liminf, limsup)
hist(B)