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
