n=100000
u=16.15
o=5
x=rnorm(n,u,o)
h=(2*sqrt(2*pi))
resul=mean(h)
errorE=sqrt((var(h))/n)
error=2*errorE#confianza 95%
limsup=resul+error
liminf=resul-error
cbind(resul, error, liminf, limsup)
