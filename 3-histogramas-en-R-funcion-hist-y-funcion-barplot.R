# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Histogramas en R: función hist() y función barplot()

head(mtcars)

summary(mtcars$qsec)

# Con la función hist()

hist(mtcars$qsec)

hist(mtcars$qsec, 5)

hist(mtcars$qsec, 5, main = "Histograma", xlab = "Clase", ylab = "Frecuencia", col = "red")

# Con la función barplot()

frecuencias <- table(cut(mtcars$qsec, breaks = 5))

barplot(frecuencias)

barplot(frecuencias, las = 2, horiz = T)

barplot(frecuencias, main = "Histograma", xlab = "Clase", ylab = "Frecuencia", col = "orange")
