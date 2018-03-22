#my first R file
#4 - like below for creating a bookmark
#vectors----
v1=c('A','B','C')
v2=c(1,2,3)
v3=c(TRUE,TRUE,FALSE)
v3a=c(T,F,T)
v4=1:10
(v5=seq(1,10,2))   #( ) bracket outside for printing
v4;v5;v1 #printing multiple vectors

v4[c(2,3,5)] #selective printing
v4[2:5]
v4[-(2:5)]
v4[v4>5]
v1[v1>='B']
v4[v1 %in% c('A','C')]
v8 = 1:5
names(v8)=c('Hi','By','Cy','ki','Ni')
v8['hi']
v8[2]
#dataframe----
dx=data.frame(rollno=c(1,2,3),name=c('Rohit','Lalit','Hiren'),course=c('MBa','MCA','CCS'),marks=floor(runif(3,65,100)))
View(dx)
dx=fix(dx)
str(dx)#view datatype
class(dx)#view datatype
#list----
#rm(list=ls()) #remove global variables
(mylist=list(1,dx,v4))
ls()#show variables in eviroment
#matrix----
(mymatrix=matrix(1:24,ncol = 4))
(mymatrix1=matrix(1:24,ncol = 4,byrow=TRUE))
(mymatrix2=matrix(1:24,nrow=4))
#array----
(myarray=array(1:24,dim=c(4,3,2),dimnames=list(c('S1','S2','S3','s4'),c('Sub1','Sub2','Sub3'),c('Dept1','Dept2'))))

#factors----
dx$gender=c('M','F','M')  # used to designate a identifier for each character value , this allows for easy understanding 
dx
View(dx)
dx$gender=factor(dx$gender)
str(dx)
dx$gender=factor(dx$gender,ordered = TRUE,label=c('M','F')) # ordering factors according to the requirements 
str(dx)
