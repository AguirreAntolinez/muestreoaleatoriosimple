# muestreoaleatoriosimple
#Código en R para calcular tamaño de muestra y extraerla de un data frame usando muestreo aleatorio simple.  
n<-(qnorm(1-0.05/2)^2*nrow(df)*0.5^2)/
  (0.05^2*(nrow(df)-1)
   +qnorm(1-0.05/2)^2*0.5^2)
set.seed(1); a<-sample(nrow(df),
                      n,replace = FALSE)
muestra<-df[a,];View(muestra)
