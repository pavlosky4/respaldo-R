# introducci√≥n ------------------------------------------------------------
getwd()
iris
mtcars
?iris #entrega info o ayuda. es equivalente al comando help
?mtcars
write.csv(iris, "datos_iris.csv")
write.csv(iris,"C:\\Users\\pavlo\\OneDrive\\Documentos\\Nueva carpeta (2)\\clase 2 R\\irisexcel.csv")


# seccion1 ----------------------------------------------------------------

# CTRL + SHIFT + R #crea una seccion
# CTRL + SHIFT + O #abre el menu

# seccion2 ####

summary(iris)

#objetos ####
#es una variable al cual se le asigna un valor
#operador <- se consigue con 
# ALT + -
num <- 521
a <- 3
3->d
e=78

NUM <- 6777
# rm(variable) eliminar un objeto (valor y nombre)
#ls() muestra todos los objetos que se tienen
ls()
#se puede eliminar una lista de objetos usando
rm(list=ls())
ls()  #no aparece nada ya que se elimino la lista
num <- 521
a <- 3
3->d
e=78

sqrt(num)
log(num)
abs(num)
raiz_cuadrada <- sqrt(num)
raiz_cuadrada

#VECTORES  utiliza la funci√≥n c()
# x<-c(objeto1, objeto2, objeto3, ...)

# x<-c("a","b","c","d","e" )

vector <- c(3,4,5,6,7)  #concatenar
vector #imprime en pantalla el vector concatenado
cuarentena <- c(fran=10, Alex=3, Diego=NA)
cuarentena

mean(vector)
mean(cuarentena) #como cuarentena incluye un valor alfabetico
#se tiene que excluir estos valores de la sgte forma:
mean(cuarentena,na.rm=TRUE)

sqrt(vector)
sqrt(cuarentena)

dias <- c("lunes", "martes", "miercoles", "jueves", "viernes")
dias

numdias <- c(num,dias)
numdias

logico <- c(TRUE, FALSE, TRUE)
logico

vector>3

hola <- c(1,1,1,2,3,3,3,4,5,8)
hola
hola>3

jelo <- hola>3
jelo

numdias2 <- c("num",dias)
numdias2

a <- c(1,2,3,4,5)
b <- c("L", "M", "m", "J", "V")

# data.frame --------------------------------------------------------------
# es la base de datos que se puede exportar e importar

df <- data.frame(num,dias)
df

df2 <- data.frame(hola,dias)
df2

df3 <- data.frame(a,b)
df3

#reemplaza los nombres de los vectores de la base de datos
names(df3)
names(df3) <- c("n˙mero", "dÌas")   #numero era a y dias b
df3
colnames(df3)
rownames(df3)

rownames(df3) <- c("a","b","c","d","e")
df3

#muestra una base de datos en formato excel
View(df3)

#list

lista <- list(a, b, cuarentena, dias, hola)
listanombre <- list(a=a, diassemana=b, cuarentena=cuarentena, diascompletos=dias, numeros=hola)
listanombre
listanombre$a

iris
modelo <- lm(Sepal.Length~Petal.Length, data = iris)
plot(iris$Petal.Length,iris$Sepal.Length)
abline(modelo)
summary(modelo)
  
# modelo es una lista con elementos del modelo de regresiÛn
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

