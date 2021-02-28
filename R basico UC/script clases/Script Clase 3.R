#### Script Clase 3 ####

## Repaso ####
# Vector
polera <- c(254,203,182,50)
mean(polera) #media
var(polera) #varianza
sum(polera) #suma

polera*2
sqrt(polera)


# Data Frame
mes<-c("Enero", "Febrero", "Marzo", "Abril") # Un vector de caracteres

df <- data.frame(mes, polera)
df
View(df)

# Podemos guardar el csv
write.csv(df,"datos_poleras.csv")

search()

#### Instalar Paquetes #### 
# install.packages("ggplot2")
# install.packages("readr")

# Para usar el paquete se debe activar con la función library.
library(ggplot2)

ggplot(data=iris, aes(Sepal.Length, Petal.Length, color=Species)) + 
  geom_point()

# instalamos el paquete dplyr
install.packages("dplyr")
# lo activamos
library(dplyr)

#### Generación de objetos ####

# secuencias:
1:20
3:100

a<-1:20
a

# También se pueden generar secuencias con la función seq
seq(0,100,5)
seq(0,100)

b<-seq(0,100,5)
?seq
help(seq)

c<- seq(from = 0, to = 100, by = 5)
d<- seq(by = 5, from = 0, to = 100 )
d
e<- seq(5, 0, 100)
e
# Repeticiones
rep(1,100)
f<-rep(1:5,100)
f

rep(1:5, times = 100) # Replica 100 veces 1,2,3,4,5
rep(1:5, each = 100) # Replica 100 veces cada elemento del vector.


### Otros objetos
LETTERS
month.name

letras<-rep(LETTERS,100 )
letras

#### Manipulación de Objetos ####

x <- 3:15
x

x[3] # llamo al elemento que está en la posicion 3 del vector x
x[-3] # llamo a todos los elementos, excepto al que está en la posición 3 del vector x

diego <- x[-3]
diego

x[2:10]
x[2:100]

# Largo o tamaño de un objeto
dim(x) # Esta se usa para data frame
length(x) # Esta se usa para vectores

# Manipular vectores a traves de una condición lógica.

inst <- x > 4
inst
x[inst]

x[x>4]
x[x==4]
x[x>5 & x<10 ]


# Identificar missing
m <- c(1,NA,5,6,NA,7) 
m
is.na(m)
m[!is.na(m)]


## Ordenar los datos de un vector

order(x) # x está ordenado

t <- c(8,5,4,7,9)
t

order(t)

posiciones <- order(t)
tordenado <-t[posiciones]
tordenado


#### Manipulación Data Frame ####
df[2,2] # Lo que está en la fila 2, columna 2 de mi data frame
df[2,1]
df[,1] # Entrega todo lo que está en la columna 1
names(df)
df[,"mes"] #Hace lo mismo que lo anterior


df[,"polera"]

df[2,] #Entrega todo lo que está en la fila 2

df[2]


#### Funcion subset ####

subset(df, subset = polera < 200)

subset(df, subset = polera < 200, select = mes)



#### Importar Datos ####

# Forma sencilla usando menus de Rstudio

# File - importar data set - from excel
install.packages("readxl")
library(readxl)
nombres <- read_excel("nombres.xlsx", sheet = "Sheet1")
View(nombres)
head(nombres) # Muestra los primeros registros
tail(nombres) # Muestra los ultimos registros
dim(nombres) # Muestra la dimensión del data frame
names(nombres) # Muestra los nombres del data frame
length(nombres$anio) 

# Otra forma de seleccionar variables de un data frame es usando $
nombres$anio
nombres[, "anio"] # Es equivalente a la linea anterior

View(nombres[nombres$nombre == "Sergio",]) # Muestra todos los datos cuando el nombre es Sergio
View(nombres[nombres$nombre == "Sergio" & nombres$anio ==1982,]) # Muestra todos los datos del año 1982 cuando el nombre es Sergio

sergio <- nombres[nombres$nombre == "Sergio",] # Creamos un subconjunto de datos con el nombre Sergio
sergio
plot(sergio$anio,sergio$n,type = "l") # Graficamos la evolución de los nombres

kevin <- nombres[nombres$nombre == "Kevin",]
kevin
plot(kevin$anio,kevin$n,type = "l")
