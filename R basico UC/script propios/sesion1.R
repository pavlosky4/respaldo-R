getwd()
poleras <- c(254,203,182,50)
buzos <- c(100,235,543,34)
meses <- c("Ene", "Feb", "Mar", "Abr")
min(buzos)
plot(buzos)
barplot(buzos,names.arg = meses,col="blue")
min(poleras)
plot(poleras)
barplot(poleras,names.arg = meses,col="orange")
write.csv(cbind(meses, poleras),"datospoleras.csv")
read.csv("datospoleras.csv")

notas <- c(52,54,65,70,54,44,32,45,33,70,68,56,70)
alumnos <- c("j","k","L","M","N","O","P","Q","R","S","T","V","W")
min(notas)
plot(notas)
barplot(notas,names.arg=alumnos,col="red")
write.csv(cbind(notas,alumnos),"notas.csv")
read.csv("notas.csv")


polera <- c(254,203,182,50)
mean(polera)
sum(polera)

typeof(polera)
typeof(notas)
typeof(alumnos)
