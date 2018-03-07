rm(list=ls())
library(devtools)
library(roxygen2)
packdir<-"c:/data/GitHub/Class/PS5/"
packname<-"integrateIt"
setwd(packdir)
package.skeleton()
file.rename("anRpackage", packname)
setwd(packname)
file.remove(c("Read-and-delete-me","NAMESPACE"))
setwd("man")
file.remove(dir())
setwd(paste(packdir,packname,"/R",sep=""))
file.remove(dir())
setwd(packdir)
file.copy("integrateIt.R",paste(packname,"/R",sep=""))



##Reminder
##dcode<-as.package("pack")
##load_all(dcode)
##ocument(dcode)