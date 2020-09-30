# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Estadística 2020-2
# Profesor: Cesar Hernández
# Medidas de dispersión
# Ojivas en R: función plot()

head(mtcars)

frecuencias <- data.frame(table(cut(mtcars$mpg, breaks = 5)))

FreqRelAc <- cumsum(prop.table(frecuencias$Freq))

plot(FreqRelAc, type = "o",main = "Ojiva", xlab = "Clase", ylab = "F. Acumulada", col = "purple")
