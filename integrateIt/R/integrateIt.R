setClass(Class="Trapezoid",
         representation=representation(x = "numeric", y="numeric", result="numeric"),
         prototype=prototype(x=vector(), y=vector(), y=numeric()))

setClass(Class="Simpson",
         representation=representation(x = "numeric", y="numeric", result="numeric"),
         prototype=prototype(x=vector(), y=vector(), y=numeric()))


setGeneric(name="integrateIt", def=function(xv,fxv,abv,rule){
  standardGeneric("integrateIt")}
)


setMethod("integrateIt", "integrateIt", 
          function(xv,fxv,abv,rule, ...){
            a<-min(abv)
            b<-max(abv)
            h<-(b-a)/length(xv)
            T<-sum(h*fxv)-(h/2)*fxv[1]-(h/2)*fxv[length(fxv)]
            ## T=Sum of (y*h)-(h/2)(y_0+y_n)
            S<-(h/3)*sum((rep(c(2,4),length(fxv)/2)%*%fxv)-fxv[1]+fxv[length(fxv)])
            ## S=(h/3)*(sum of )
            if(argum=="Trap"){
            new("Trapezoid",)}
          }
) 
