#library(nonparaeff)
library(lpSolveAPI)
library(ucminf)
library(quadprog)
library(Benchmarking)
#######read file(2015）9 ports data#####
getwd()
dat<- read.csv("2015.csv")
dat
#####outputs and inputs#####
X_data<- matrix(c(dat$X1,dat$X2), ncol=2 )
head(X_data)
Y_data<- matrix(c(dat$Y1,dat$Y2), ncol=2)
head(Y_data)
#####get CRS VRS SE#####
CRS_eff<- dea(X= X_data, Y=Y_data,RTS="crs", ORIENTATION="in" ) 
CRS_eff
VRS_eff<- dea(X= X_data, Y=Y_data,RTS="vrs", ORIENTATION="in" )
VRS_eff

CRS_eff$eff
VRS_eff$eff

Scale_eff<- CRS_eff$eff/VRS_eff$eff
Scale_eff

result<- cbind(dat$DMU,CRS_eff$eff,VRS_eff$eff,Scale_eff,VRS_eff$slack)
result

summary(CRS_eff)
summary(VRS_eff)

write.csv(result, file = "/Users/tianmengyan/Desktop/2015ccrbcc")
###########################################

#######read file(2016）9 ports data#####
getwd()
dat<- read.csv("2016.csv")
dat
#####outputs and inputs#####
X_data<- matrix(c(dat$X1,dat$X2), ncol=2 )
head(X_data)
Y_data<- matrix(c(dat$Y1,dat$Y2), ncol=2)
head(Y_data)
#####get CRS VRS SE#####
CRS_eff<- dea(X= X_data, Y=Y_data,RTS="crs", ORIENTATION="in" ) 
CRS_eff
VRS_eff<- dea(X= X_data, Y=Y_data,RTS="vrs", ORIENTATION="in" )
VRS_eff

CRS_eff$eff
VRS_eff$eff

Scale_eff<- CRS_eff$eff/VRS_eff$eff
Scale_eff

result<- cbind(dat$DMU,CRS_eff$eff,VRS_eff$eff,Scale_eff,VRS_eff$slack)
result

summary(CRS_eff)
summary(VRS_eff)

write.csv(result, file = "/Users/tianmengyan/Desktop/2016ccrbcc")
###########################################
#######read file(2017）9 ports data#####
getwd()
dat<- read.csv("2017.csv")
dat
#####outputs and inputs#####
X_data<- matrix(c(dat$X1,dat$X2), ncol=2 )
head(X_data)
Y_data<- matrix(c(dat$Y1,dat$Y2), ncol=2)
head(Y_data)
#####get CRS VRS SE#####
CRS_eff<- dea(X= X_data, Y=Y_data,RTS="crs", ORIENTATION="in" ) 
CRS_eff
VRS_eff<- dea(X= X_data, Y=Y_data,RTS="vrs", ORIENTATION="in" )
VRS_eff

CRS_eff$eff
VRS_eff$eff

Scale_eff<- CRS_eff$eff/VRS_eff$eff
Scale_eff

result<- cbind(dat$DMU,CRS_eff$eff,VRS_eff$eff,Scale_eff,VRS_eff$slack)
result

summary(CRS_eff)
summary(VRS_eff)

write.csv(result, file = "/Users/tianmengyan/Desktop/2017ccrbcc")
###########################################
#######read file(2018）9 ports data#####
getwd()
dat<- read.csv("2018.csv")
dat
#####outputs and inputs#####
X_data<- matrix(c(dat$X1,dat$X2), ncol=2 )
head(X_data)
Y_data<- matrix(c(dat$Y1,dat$Y2), ncol=2)
head(Y_data)
#####get CRS VRS SE#####
CRS_eff<- dea(X= X_data, Y=Y_data,RTS="crs", ORIENTATION="in" ) 
CRS_eff
VRS_eff<- dea(X= X_data, Y=Y_data,RTS="vrs", ORIENTATION="in" )
VRS_eff

CRS_eff$eff
VRS_eff$eff

Scale_eff<- CRS_eff$eff/VRS_eff$eff
Scale_eff

result<- cbind(dat$DMU,CRS_eff$eff,VRS_eff$eff,Scale_eff,VRS_eff$slack)
result

summary(CRS_eff)
summary(VRS_eff)

write.csv(result, file = "/Users/tianmengyan/Desktop/2018ccrbcc")
###########################################
#######read file(2019）9 ports data#####
getwd()
dat<- read.csv("2019.csv")
dat
#####outputs and inputs#####
X_data<- matrix(c(dat$X1,dat$X2), ncol=2 )
head(X_data)
Y_data<- matrix(c(dat$Y1,dat$Y2), ncol=2)
head(Y_data)
#####get CRS VRS SE#####
CRS_eff<- dea(X= X_data, Y=Y_data,RTS="crs", ORIENTATION="in" ) 
CRS_eff
VRS_eff<- dea(X= X_data, Y=Y_data,RTS="vrs", ORIENTATION="in" )
VRS_eff

CRS_eff$eff
VRS_eff$eff

Scale_eff<- CRS_eff$eff/VRS_eff$eff
Scale_eff

result<- cbind(dat$DMU,CRS_eff$eff,VRS_eff$eff,Scale_eff,VRS_eff$slack)
result

summary(CRS_eff)
summary(VRS_eff)

write.csv(result, file = "/Users/tianmengyan/Desktop/2019ccrbcc")
###########################################


#Malmquist#####

#######read file(Malmquist）9 ports data#####
getwd()
data1<- read.csv("Malmquist.csv")
data1
#####outputs and inputs#####
X_data<- matrix(c(dat$X1,dat$X2), ncol=2 )
head(X_data)
Y_data<- matrix(c(dat$Y1,dat$Y2), ncol=2)
head(Y_data)

malm.dat<-data.frame(id=rep(LETTERS[1:9],5),time=rep(1:5,each=9),
                     y=Y_data,
                     x=X_data)
malm.dat
library(nonparaeff)
malm.rel<-faremalm2(malm.dat,noutput=1,id="id",year="time")
malm.rel
######Happy Ending####