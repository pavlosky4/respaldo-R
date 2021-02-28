#### clase 3 script ####

## repaso ####
# vectores

polera <- c(254,203,182,50)
polera

mean(polera)     #media
var(polera)      #varianza    
sum(polera)      #suma
sd(polera)       #sd

varianza_polera <- var(polera)
varianza_polera
sd <- sqrt(varianza_polera)
sd

sqrt(polera)
polera*2

#data frame 
mes <- c("Enero", "febrero", "marzo", "abril")
mes

df <- data.frame(mes, polera)
df

View(df)

#para guardar
write.csv(df,"datos_poleras.csv")

# paquetes ####
search()  #indica los paquetes activos
# se pueden descargar de github o CRAn

# instalar 

install.packages("ggplot2")
# install.packages("readr") via tool

# para activar paquetes

library(ggplot2)

# grafico
ggplot(data=iris, aes(Sepal.Length, Petal.Length, color=Species))+ geom_point()

# sirve para ingenieria de datos
install.packages("dplyr")

library(dplyr)

#
install.packages("tidyverse")
library(tidyverse)

# generacion de objetos ####

# generar vector de secuencia
b <- c(1:20)
b
b2 <- 1:20
b2

# se pueden crear secuencias de numeros con la funcion seq
seq(0,100)
seq(0,100,5)        #3er argumento indica de cuanto en cuanto va
seq(0,100,20)
e <- seq(from= 0, to= 100, by= 5)   #forma alternativa es flexible en orden
e

# repeticiones
rep(1,100)
f <- rep(1:5,100)  #repite 100 veces de 1 a 5
f

rep(1:5, times=100)  #repite 100 veces de 1 a 5. es lo  q usa x defecto anteriormente
rep(1:5, each=100)  #repite 100 veces de forma ordenada (100 de 1, 100 de 2, etc)

# otros objetos
LETTERS
month.name

#aplicando
letrasrepetidas <- rep(LETTERS,100)
letrasrepetidas

#### manipulación de objetos ####

x <- 3:15
x

x[1]     #indica el elemento que está en la posicion [y]  y=numero. es un vector de posicion
x[3]
x[-3]     # excluye valor indicado
x[2:10]   #hace una secuencia con los valores indicados

pablo <-x[5]
pablo

#Largo del vector
dim(x)    #indica mas util para DF
length(x) #indica largo del vector

# manipulacion de vectores de una condicion logica
x <- 4
drop(x)
x
inst <- x>4
inst
x[inst]

x[x<4]
x[x==4]
x[x>5 & x<10]

# identificar missing
m <-c(1,NA,5,6,NA,7)
m
is.na(m)
m[!is.na(m)] #indica los que no son missing

# ordenar los datos de un vector

order(x)
t <- c(8,5,4,7,9)
t
order(t)

posiciones <- order(t)
posiciones
tordenado <- t[posiciones]
tordenado

tordenado2 <- order(t)
tordenado2



a<- c(8,5,4,7,9)
a
order(a)

posiciones1 <- order(a)
posiciones1
tordenado1 <- a[posiciones]  #posiciones ordena el vector
tordenado1

tordenado21 <- order(a)
tordenado21


#### Manipulacion Data Frame

df[2,2]    # muestra lo que esta en fila y columna del vector
df[1,2]
df[,1]     # muestra todo lo que está en la columna

names(df)
df[,"mes"] # hace lo mismo que anterior
df[,"polera"]

df[2,]  # muestra todo lo que está en la fila

#### Funcion subset  ####

subset(df, subset=polera >200)  #crea un subconjunto del DF
subset(df, subset=polera >200, select=mes) #subset filtra fila y select columna

#### importar datos ####

# forma sencilla usando menus de rstudio

# File <- importar data set - from excel

install.packages("readxl")

library(readxl)
nombres <- read_excel("nombres.xlsx")
View(nombres)  # abre ventana como excel
head(nombres)  #muestra primeros 10 registros
tail(nombres) # muestra los ultimos registros
dim(nombres)   # indca total de variables y observaciones
names(nombres)  # indica nombre de variables
length(nombres$anio)  # indica longitud de variable
nombres[,"anio"]
nombres$anio

nombres[nombres$nombre=="Pablo",]   # busca en el archivo nombre la variable nombre = pablo x ej

View(nombres[nombres$nombre=="Pablo",])
View(nombres[nombres$nombre=="Pablo" & anio==1990,])

View(nombres[nombres$nombre=="Pablo" & nombres$anio==1990,])

pablo <- nombres[nombres$nombre== "Pablo",]
pablo

plot(pablo$anio, pablo$n)
plot(pablo$anio,pablo$n,type= "l")
plot(pablo$anio, pablo$n, type="o")
plot(pablo$anio, pablo$n, type="s")

pablo <- nombres[nombres$nombre == "Pablo",] # Creamos un subconjunto de datos con el nombre Sergio
pablo
plot(pablo$anio,pablo$n,type = "l")



###
nombres[,"anio"]
nombres$anio

nombres[nombres$nombre=="Camila",]   # busca en el archivo nombre la variable nombre = pablo x ej

View(nombres[nombres$nombre=="Camila",])
View(nombres[nombres$nombre=="Camila" & anio==1990,])

View(nombres[nombres$nombre=="Camila" & nombres$anio==1990,])

camila <- nombres[nombres$nombre=="Camila",]
camila


plot(camila$anio,camila$n,type="l")
plot(camila$anio,camila$n)
plot(pablo$anio, pablo$n, type="o")


View(nombres)


###
pablo <- nombres[nombres$nombre == "Pablo",] # Creamos un subconjunto de datos con el nombre Sergio
pablo
plot(pablo$anio,pablo$n,type = "l")


getwd()
