## Curso: Primeros Pasos en R
## Clase 2
## Profesora: Ana María Alvarado (amalvara@uc.cl)
## Ayudante: Diego Muñoz
## Enlace a este script: https://www.dropbox.com/s/2nu0iev6cuuwvla/Script%20Clase%202.R?dl=0


# Repaso Directorios ------------------------------------------------------------
getwd() # muestra el directorio de trabajo actual

write.csv(iris,"datos_iris.csv") #guarda los datos en el directorio actual

#Si quiero guardar en una subcarpeta del proyecto
write.csv(iris,"datos clases\\datos_iris.csv")



# Crear seccion -----------------------------------------------------------

# seccion 1 ####

# ctrl+shift+r  # crea una sección
# crtl+shift+o # abre el menu


# seccion 2 ####
summary(iris)

# Objetos en R ------------------------------------------------------------

# Para asignar objetos usamos <-
num <- 521
a <- 3 # usar alt (+) -
b <- a
a

3 -> d # tambien se puede usar -> como operador de asignacion

e = 78 # tambien se puede usar = para asignar objetos


# Para eliminar objetos
rm(a) # Elimina el objeto a

ls() # muestra todos los objetos creados

rm(list=ls()) # elimina todo los objetos creados
ls()


num <- 521
a <- 3 # usar alt (+) -
b <- a

num
sqrt(num)
log(num)
abs(num)

raiz <- sqrt(num)
raiz

# Ejemplo
a <- 5
b <- a
a <- 4
a # a se sobreescribe
b # b no cambia su valor

# Vectores ----------------------------------------------------------------

# Para crear un vector usamos c() "concatena objetos"
vector <- c(3,4,5,6,7) 
vector

cuarentena <- c(Fran = 10, Alex = 3, Diego = NA) #Diego no contesta
cuarentena

mean(vector)
mean(cuarentena, na.rm = TRUE ) # Calcula la media sin el dato NA

sqrt(vector) #calcula la raiz a cada elemento del vector
sqrt(cuarentena)
?mean

# Vectores de tipo caracter
dias <- c("L","M","W","J","V")
dias
# sqrt(dias) #no puede calcular la raiz

# Vectores formados por otros objetos (escalar y vector)
numdias <- c(num, dias)
numdias

numdias2<-c("num", dias)
numdias2

# Vectores de tipo lógico
logico <- c(TRUE, FALSE, TRUE)
logico

vector > 3
comp <- vector > 3 # Se asigna el resultado de la comparación lógica al vector comp
comp 


numdias
numdias2

# Data Frame ####

# para crear un data frame usamos la función data.frame()
df <- data.frame(num,dias)
df

df2 <- data.frame(vector,dias)
df2

# para cambiar o asignar nombres a las variables del data frame
names(df2)
names(df2) <- c("Notas de Diego", "Dias")
df2

# nombres de filas y columnas
colnames(df2)
rownames(df2)

# asignamos nuevos nombres a las filas
rownames(df2)<- c("a","b","c","d","e")
rownames(df2)

df2

# vista de data frame
View(df2)
View(iris)


# Lista -------------------------------------------------------------------
# Para crear una lista usamos la función list()
lista <- list(a, comp, cuarentena, logico,dias)
lista

# Creamos la lista con nombres
lista <- list(a=a, comparacion = comp, cuarent = cuarentena, logico =logico,Dias = dias)
lista

# podemos llamar a un objeto de la lista usando $
lista$cuarent

# Ejemplo de Regresion lineal simple
iris
modelo <- lm(Sepal.Length~Petal.Length, data = iris)
plot(iris$Petal.Length,iris$Sepal.Length)
abline(modelo)
summary(modelo)

# modelo es una lista con elementos del modelo de regresión
ls(modelo)
modelo$coefficients

coeficientes.modelo1 <- modelo$coefficients
coeficientes.modelo1

# Tipos de Objetos --------------------------------------------------------
typeof(dias)
typeof(vector)
vector

vector2<-c(3.5,4.6, 7)

typeof(vector2)


entero <-c(2L,5L)
entero
typeof(entero)
c(TRUE)
