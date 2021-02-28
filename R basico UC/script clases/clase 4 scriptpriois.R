### script clase 4
getwd()
search()
library("ggplot2")
search()

ls()
rm(list=ls())   #borra la lista de objetos que estaba

### importar datos ####
library(readxl)
df_nombres <- read_excel("nombres.xlsx",
                           sheet ="Sheet1")
View(df_nombres)

library(readr)
Covid <- read_delim("Covid.csv", ";", escape_double = FALSE, 
                    trim_ws = TRUE)
View(df.covid)


df.covid2 <- read_csv("https://raw.githubusercontent.com/MinCiencia/Datos-COVID19/master/output/producto3/CasosTotalesCumulativo.csv")
View(df.covid2)

library(readxl)
df.encuesta <- read_excel("Encuesta.xlsx",
                          sheet ="Encuesta")
View(df.encuesta)


library(readxl)
df.encuesta <- read_excel("Encuesta.xlsx", sheet = "Encuesta", 
                      na="NA")
View(df.encuesta)



df.encuesta2 <- readxl::read_excel("Encuesta.xlsx")    #activa libreria sin usar comando library
library(dplyr)

# :: indica library y las funciones indicadas


df.vivienda <- read.csv("Viviendas.csv")
View(df.vivienda)

df.vivienda2 <- readr::read_csv("Viviendas.csv")   #realiza la misma accion anterior
View(df.vivienda2)

### funciones de exploracion de datos ####
head(df_nombres)  # muestra primeros 6 registros
head(df_nombres,10) # muestra primeros 10 registros

tail(df_nombres) # muestra primeros 6 registros
tail(df_nombres, 10) # muestra primeros 10registros

dim(df_nombres)   # indica la dimension del objeto
length(df_nombres) # indica la dimension de un objeto especifico

length(df_nombres$anio)

df_nombres[,1]   #vector columna 1
df_nombres$anio  #vector columna 1
df_nombres$nombre

#puedo guardar estos vectores como objetos
a <- df_nombres$nombre

df_nombres[1,]   #vector fila 1


str(df_nombres)  # muestra la estructura de los datos
class(df_nombres)  # indica la naturaleza de los datos
class(df_nombres$anio)

names(df_nombres)  # indica nombre de los datos



#### Actividad 1 ####

#filtra tu nombre
pablo <- df_nombres[df_nombres$nombre=="Pablo",]  # la ultima coma indica que tiene que buscar en la columna nombre

class(pablo)
str(pablo)

plot(pablo$anio, pablo$n, type="l")
plot(pablo$anio, pablo$n, type="o")
plot(pablo$anio, pablo$n, type="s")



#*
camila <- df_nombres[df_nombres$nombre=="Camila",]  # la ultima coma indica que tiene que buscar en la columna nombre

class(camila)
str(camila)

plot(camila$anio, camila$n, type="l")
plot(camila$anio, camila$n, type="o")
plot(camila$anio, camila$n, type="s")

points(pablo$anio, pablo$n, type="l", col="red", lwd=4)


# filtrar con subset
subset(df_nombres, nombre=="Pablo")

pablo2 <- subset(df_nombres,nombre=="Pablo")
pablo2

pablo_cami <- subset(df_nombres, nombre=="Pablo"|nombre=="Camila")
plot(pablo_cami)
# nombres mas populares 2016
n2016 <- df_nombres[df_nombres$anio ==2016,]
dim(n2016)


posiciones <-order(n2016$n, decreasing = TRUE)    
posiciones
n2016[posiciones,]


n2016.f <- df_nombres[df_nombres$anio ==2016 & df_nombres$sexo=="F",]
posiciones <-order(n2016$n, decreasing = TRUE) 
n2016.f[posiciones,]


# analisis de datos cualitativos #### 
#categorias como sexo

## datos encuesta
names(df.encuesta)
table(df.encuesta$P3)   #tabla de frecuencia


tablap3 <- data.frame(table(df.encuesta$P3))
tablap3

table(df.encuesta$P3, df.encuesta$P9)

tablap3p9 <- data.frame(table(df.encuesta$P3, df.encuesta$P9))
tablap3p9

prop.table(table(df.encuesta$P3))  #toma la tabla de frec y la transforma en %
data.frame(prop.table(table(df.encuesta$P3)))
barplot(table(df.encuesta$P3))
pie(table(df.encuesta$P3), main="Encuesta seguridad ciudadana")


# analisis de datos cuantitativos #### 
summary(df.encuesta)
summary(df.vivienda)

mean(df.encuesta$P156)
min(df.encuesta$P156)
var(df.encuesta$P156)
cor(df.encuesta$P156, df.encuesta$P155)  #correlacion
plot(df.encuesta$P156, df.encuesta$P155)

cor(df.vivienda [,-10])
round(cor(df.vivienda [,-10]), 4)   # redodndea
x11()
pairs(df.vivienda [,-10])  # muestra la mtz de correclaciond e todas las variables
hist(df.encuesta$P155)
aggregate(df.encuesta$P8~df.encuesta$P64, FUN=mean)  #saca la media en función de una variable y otra 

