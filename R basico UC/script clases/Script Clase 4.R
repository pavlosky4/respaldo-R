#### Script Clase 4  ####
####    21-01-2021      ####

getwd() # Chequear directorio
search()  # Chequear librerías activas

library(ggplot2)
search()

ls() # Chequear todos los objetos
rm(list = ls()) # Eliminar los objetos


#### Importar Datos ####

# 1. Menú R-Studio
# Pegamos el codigo desde el menu de importar archivos.
library(readxl)
df.nombres <- read_excel("nombres.xlsx", sheet = "Sheet1")
View(df.nombres)

# 2. librería readr
# install.packages("readr")
library(readr)
df.covid <- read_csv("Covid.csv")
View(df.covid)

# podemos leer los datos actualizados
df.covid2<- read_csv("https://raw.githubusercontent.com/MinCiencia/Datos-COVID19/master/output/producto3/CasosTotalesCumulativo.csv")
View(df.covid2)
# más datos covid en: https://github.com/MinCiencia/Datos-COVID19/

# 3. librería readxl
library(readxl)
df.encuesta <- read_excel("Encuesta.xlsx", sheet = "Encuesta",   na = "NA")
View(df.encuesta)

# podemos usar :: para llamar a una función de una librería específica, sin activarla
df.encuesta2 <- readxl::read_excel("Encuesta.xlsx")

# Ejemplo función filter de la librería dplyr
library(dplyr)

?dplyr::filter
?stats::filter

# 4. read.xx de r base
df.viviendas <- read.csv("Viviendas.csv")
View(df.viviendas)


df.viviendas2 <- readr::read_csv("Viviendas.csv")
View(df.viviendas2)

#### Funciones de Exploración ####

head(df.nombres) #muestra los primeros 6 registros
head(df.nombres, 10) #muestra los primeros 10 registros

tail(df.nombres) # muestra los ultimos 6 registros
tail(df.nombres, 10) #muestra lol ultimos 10 registros


dim(df.nombres)
length(df.nombres)

length(df.nombres$anio)

df.nombres[,1]
df.nombres$anio
df.nombres$nombre

a<-df.nombres$nombre


str(df.nombres) # Estrucutra del data frame
class(df.nombres) # La naturaleza del objeto
class(df.nombres$anio)

names(df.nombres)


#### Actividad 1 ####

# Filtra tu nombre
ana <- df.nombres[df.nombres$nombre == "Ana",]
#[ fila , columna] 

class(ana)
str(ana)

plot(ana$anio, ana$n, type="l")
points(Dante$anio, Dante$n , type = "p", col="red", lwd=3)

# filtros con subset
ana2 <- subset(df.nombres, nombre == "Ana")
ana.benjamin <- subset(df.nombres, nombre == "Ana" | nombre == "Benjamin")

## Nombres más populares 2016
n2016 <- df.nombres[df.nombres$anio == 2016,]
dim(n2016)

posiciones <-order(n2016$n, decreasing = TRUE)
?order
n2016[posiciones,]


n2016.F <- df.nombres[df.nombres$anio == 2016 & df.nombres$sexo =="F",]
posiciones <-order(n2016.F$n, decreasing = FALSE)

n2016.F[posiciones,]

#### Analisis de Datos Cualitativos ####

## Datos encuesta
names(df.encuesta)
table(df.encuesta$P3)
tablap3 <- data.frame(table(df.encuesta$P3))
tablap3

tablap3p9<- table(df.encuesta$P3, df.encuesta$P9)
tablap3p9

prop.table(table(df.encuesta$P3))
data.frame(prop.table(table(df.encuesta$P3)))

barplot(table(df.encuesta$P9))
pie(table(df.encuesta$P9), main="Encuesta Seg Ciudadana")

#### Analisis de datos cuantitativos  ####
 
summary(df.encuesta)
summary(df.viviendas)

mean(df.viviendas)

mean(df.encuesta$P156)
min(df.encuesta$P156)
var(df.encuesta$P156)        
cor(df.encuesta$P156, df.encuesta$P155) # correlación entre dos variables
plot(df.encuesta$P156, df.encuesta$P155) # gráfico de dispersión entre dos variables


round(cor(df.viviendas[,-10]), 4) # matriz de correlación del data frame
# dejamos todas las columnas excepto la número 10 por que es de tipo caracter

x11() # abre un panel gráfico externo
pairs(df.viviendas[,-10]) # matriz de gráficos de dispersión.
hist(df.encuesta$P155) # histograma

# aplica funciones a variables continuas agrupada en una variable categórica
aggregate(df.encuesta$P8 ~ df.encuesta$P64 , FUN = mean)

