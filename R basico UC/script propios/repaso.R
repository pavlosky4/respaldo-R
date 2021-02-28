#Tipos de estructuras de datos (objetos) ####

x <- 3 # escalares

c(25,34,45,40,32,23)             # vectores
c(Lun = 5, Mar = 3, Mie = 6)

data.frame(mes = c("Ene", "Feb", "Mar", "Abr"),
           num = c(34,56,1,23))   #dataframe (lista de vectores de igual longitud) 


list( A = "Hola", num = 1:4,
      B = c(1,2,3))               #listas (vector de diferentes objetos)

matrix(1:20,nrow=5,ncol=4)        # matrices y array

#Generación de objetos
a <-c(1:100)   #crea datos enteros de n1 a n2

seq(1,100,length.out=10)   #Crea secuencias desde un punto inicial from y un punto final to, con argumentos para agregar la  distancia entre los dos valores (by), o la cantidad total de números entre ellos (length.out).

rep(2,10) # Replica el objeto x un total de n veces. 


#Funciones ####

c() # Concatena objetos (variables, textos, números, etc.)
help() # Ayuda respecto de alguna función
library() # Carga de librerías
ls() # Lista de objetos
rm() # Eliminar objetos
abs() # Valor absoluto
sqrt() # Raíz cuadrada
exp() # Exponencial
log10() # Logaritmo base 10
log() # Logaritmo natural
round() # Redondear
mean() # Promedio aritmético
sum() # Suma

# Packages ####
install.packages("ggplot2") #instala paquete
library(ggplot2)  # llama al paquete
search() # indica package en funcionamiento

# Manipulación de Objetos ####

# selecciona posicion
vector <- c("A", "B", "C", "D", "E")
vector[2] # indica el valor 2 del vector
vector[2:4] 

# Selección por comparación (uso de operadores)
vector <- c(1,2,3,4,5)  # crea vector
selec <- vector > 3   # selecciona valores que cumpla con condicion
selec   #muestra valores seleccionados
vector[selec] #indica valores del vector que cumple condicion

# Manipulación de Data Frames ####

# df[i,j]  i=fila, j=columna
df <- data.frame(1,2,3,5,6,7,8)
df2 <- data.frame[2:5,2]
df2[2:3,]
View(df2)

subset(x = iris, subset = Sepal.Length > 5.0,
       select = c("Sepal.Length", "Species"))
a <- subset(x = iris, subset = Sepal.Length > 5.0,
            select = c("Sepal.Length", "Species"))
a[2:5,2]

is.vector(a)  #identifica objetos de forma logica
as.vector(a)  #identifica objetos como una orden

# importacion de archivos ####
# codigo es read.formato()
# Excel read.csv()
#       read.table()
#       read.delim()


# importar excel de 3 formas

# 1    readxl::read_excel()
# 2    library(readxl)
#      read_excel()
# 3    readxl::read_excel(“ruta/nombredelarchivo.xlsx”)

# paquete readr

#  read_csv() - archivos delimitados por comas
#  read_csv2() - archivos separados por punto y coma (común en países donde se utiliza , como separador decimal)
#   read_tsv() - archivos delimitados por tabulaciones
#  read_delim() - lee archivos con cualquier delimitador
#   read_fwf() - archivos de ancho fijo
#   read_table() - variación común de archivos de ancho fijo donde las columnas están separadas por espacios en blanco

# Exploración de Data Frame

#head(df,k): Muestra los primeros k registros. 
#tail(df,k): Muestra los últimos k registros. 
# (df): Filas y columnas de un objeto. 
#length(df): Número de objetos dentro del objeto BD 
#str(df): Estructura de la base de datos BD. 
#class(df): Naturaleza del objeto (similar a is). 
#names(df): Nombres.





